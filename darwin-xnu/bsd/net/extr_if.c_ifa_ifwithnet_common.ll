; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifa_ifwithnet_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifa_ifwithnet_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_9__ = type { %struct.ifaddr* }
%struct.TYPE_12__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.ifaddr* }
%struct.TYPE_7__ = type { %struct.ifnet* }
%struct.sockaddr = type { i64, i8* }
%struct.sockaddr_dl = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@if_index = common dso_local global i32 0, align 4
@ifnet_addrs = common dso_local global %struct.ifaddr** null, align 8
@ifnet_head = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifaddr* (%struct.sockaddr*, i32)* @ifa_ifwithnet_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifaddr* @ifa_ifwithnet_common(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.ifaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sockaddr_dl*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ifaddr* null, %struct.ifaddr** %7, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %8, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IFSCOPE_NONE, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %2
  %28 = call i32 (...) @ifnet_head_lock_shared()
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @AF_LINK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %34 = ptrtoint %struct.sockaddr* %33 to i64
  %35 = inttoptr i64 %34 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %35, %struct.sockaddr_dl** %12, align 8
  %36 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %12, align 8
  %37 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %32
  %41 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %12, align 8
  %42 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @if_index, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.ifaddr**, %struct.ifaddr*** @ifnet_addrs, align 8
  %48 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %12, align 8
  %49 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ifaddr*, %struct.ifaddr** %47, i64 %52
  %54 = load %struct.ifaddr*, %struct.ifaddr** %53, align 8
  store %struct.ifaddr* %54, %struct.ifaddr** %7, align 8
  %55 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %56 = icmp ne %struct.ifaddr* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %59 = call i32 @IFA_ADDREF(%struct.ifaddr* %58)
  br label %60

60:                                               ; preds = %57, %46
  %61 = call i32 (...) @ifnet_head_done()
  %62 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  store %struct.ifaddr* %62, %struct.ifaddr** %3, align 8
  br label %228

63:                                               ; preds = %40, %32
  br label %64

64:                                               ; preds = %63, %27
  %65 = load %struct.ifnet*, %struct.ifnet** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ifnet_head, i32 0, i32 0), align 8
  store %struct.ifnet* %65, %struct.ifnet** %6, align 8
  br label %66

66:                                               ; preds = %208, %64
  %67 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %68 = icmp ne %struct.ifnet* %67, null
  br i1 %68, label %69, label %213

69:                                               ; preds = %66
  %70 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %71 = call i32 @ifnet_lock_shared(%struct.ifnet* %70)
  %72 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.ifaddr*, %struct.ifaddr** %74, align 8
  store %struct.ifaddr* %75, %struct.ifaddr** %7, align 8
  br label %76

76:                                               ; preds = %196, %69
  %77 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %78 = icmp ne %struct.ifaddr* %77, null
  br i1 %78, label %79, label %201

79:                                               ; preds = %76
  %80 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %81 = call i32 @IFA_LOCK(%struct.ifaddr* %80)
  %82 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %83 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp eq %struct.TYPE_10__* %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %79
  %87 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %88 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86, %79
  br label %95

95:                                               ; preds = %162, %94
  %96 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %97 = call i32 @IFA_UNLOCK(%struct.ifaddr* %96)
  br label %196

98:                                               ; preds = %86
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @IFSCOPE_NONE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %110 = call i32 @IFA_UNLOCK(%struct.ifaddr* %109)
  br label %196

111:                                              ; preds = %102, %98
  %112 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %113 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = icmp eq %struct.TYPE_11__* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %118 = call i32 @IFA_UNLOCK(%struct.ifaddr* %117)
  br label %196

119:                                              ; preds = %111
  %120 = load i8*, i8** %10, align 8
  store i8* %120, i8** %13, align 8
  %121 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %122 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %14, align 8
  %126 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %127 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %15, align 8
  %131 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %132 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %131, i32 0, i32 0
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %137 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = bitcast %struct.TYPE_11__* %138 to i8*
  %140 = sext i32 %135 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %11, align 8
  br label %142

142:                                              ; preds = %163, %119
  %143 = load i8*, i8** %15, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = icmp ult i8* %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load i8*, i8** %13, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %13, align 8
  %149 = load i8, i8* %147, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8*, i8** %14, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %14, align 8
  %153 = load i8, i8* %151, align 1
  %154 = sext i8 %153 to i32
  %155 = xor i32 %150, %154
  %156 = load i8*, i8** %15, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %15, align 8
  %158 = load i8, i8* %156, align 1
  %159 = sext i8 %158 to i32
  %160 = and i32 %155, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %146
  br label %95

163:                                              ; preds = %146
  br label %142

164:                                              ; preds = %142
  %165 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %166 = icmp eq %struct.ifaddr* %165, null
  br i1 %166, label %178, label %167

167:                                              ; preds = %164
  %168 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %169 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = ptrtoint %struct.TYPE_11__* %170 to i32
  %172 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %173 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = ptrtoint %struct.TYPE_11__* %174 to i32
  %176 = call i64 @rn_refines(i32 %171, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %167, %164
  %179 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %180 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %179)
  %181 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %182 = call i32 @IFA_UNLOCK(%struct.ifaddr* %181)
  %183 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %184 = icmp ne %struct.ifaddr* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %187 = call i32 @IFA_REMREF(%struct.ifaddr* %186)
  br label %188

188:                                              ; preds = %185, %178
  %189 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  store %struct.ifaddr* %189, %struct.ifaddr** %8, align 8
  br label %193

190:                                              ; preds = %167
  %191 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %192 = call i32 @IFA_UNLOCK(%struct.ifaddr* %191)
  br label %193

193:                                              ; preds = %190, %188
  %194 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %195 = call i32 @IFA_LOCK_ASSERT_NOTHELD(%struct.ifaddr* %194)
  br label %196

196:                                              ; preds = %193, %116, %108, %95
  %197 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %198 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load %struct.ifaddr*, %struct.ifaddr** %199, align 8
  store %struct.ifaddr* %200, %struct.ifaddr** %7, align 8
  br label %76

201:                                              ; preds = %76
  %202 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %203 = call i32 @ifnet_lock_done(%struct.ifnet* %202)
  %204 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %205 = icmp ne %struct.ifaddr* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %213

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %207
  %209 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load %struct.ifnet*, %struct.ifnet** %211, align 8
  store %struct.ifnet* %212, %struct.ifnet** %6, align 8
  br label %66

213:                                              ; preds = %206, %66
  %214 = call i32 (...) @ifnet_head_done()
  %215 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %216 = icmp eq %struct.ifaddr* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  store %struct.ifaddr* %218, %struct.ifaddr** %7, align 8
  br label %226

219:                                              ; preds = %213
  %220 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %221 = icmp ne %struct.ifaddr* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %224 = call i32 @IFA_REMREF(%struct.ifaddr* %223)
  br label %225

225:                                              ; preds = %222, %219
  br label %226

226:                                              ; preds = %225, %217
  %227 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  store %struct.ifaddr* %227, %struct.ifaddr** %3, align 8
  br label %228

228:                                              ; preds = %226, %60
  %229 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  ret %struct.ifaddr* %229
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @IFA_ADDREF(%struct.ifaddr*) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i64 @rn_refines(i32, i32) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(%struct.ifaddr*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

declare dso_local i32 @IFA_LOCK_ASSERT_NOTHELD(%struct.ifaddr*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
