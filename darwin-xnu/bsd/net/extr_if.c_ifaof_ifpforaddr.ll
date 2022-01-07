; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifaof_ifpforaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifaof_ifpforaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_6__ = type { %struct.ifaddr* }
%struct.sockaddr = type { i64, i8* }
%struct.ifnet = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ifaddr* }

@AF_MAX = common dso_local global i64 0, align 8
@IFF_POINTOPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifaddr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ifaddr*, align 8
  %12 = alloca %struct.ifaddr*, align 8
  %13 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %6, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %12, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* @AF_MAX, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.ifaddr* null, %struct.ifaddr** %3, align 8
  br label %207

21:                                               ; preds = %2
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = call i32 @ifnet_lock_shared(%struct.ifnet* %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.ifaddr*, %struct.ifaddr** %26, align 8
  store %struct.ifaddr* %27, %struct.ifaddr** %6, align 8
  br label %28

28:                                               ; preds = %175, %21
  %29 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %30 = icmp ne %struct.ifaddr* %29, null
  br i1 %30, label %31, label %180

31:                                               ; preds = %28
  %32 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %33 = call i32 @IFA_LOCK(%struct.ifaddr* %32)
  %34 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %35 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %43 = call i32 @IFA_UNLOCK(%struct.ifaddr* %42)
  br label %175

44:                                               ; preds = %31
  %45 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %46 = icmp eq %struct.ifaddr* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %49 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %48)
  %50 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  store %struct.ifaddr* %50, %struct.ifaddr** %11, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %53 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = icmp eq %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %58 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %59 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i64 @ifa_equal(%struct.sockaddr* %57, %struct.TYPE_8__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %65 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %66 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i64 @ifa_equal(%struct.sockaddr* %64, %struct.TYPE_8__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63, %56
  %71 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %72 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %71)
  %73 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %74 = call i32 @IFA_UNLOCK(%struct.ifaddr* %73)
  br label %180

75:                                               ; preds = %63
  %76 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %77 = call i32 @IFA_UNLOCK(%struct.ifaddr* %76)
  br label %175

78:                                               ; preds = %51
  %79 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IFF_POINTOPOINT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %87 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %88 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = call i64 @ifa_equal(%struct.sockaddr* %86, %struct.TYPE_8__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %94 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %93)
  %95 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %96 = call i32 @IFA_UNLOCK(%struct.ifaddr* %95)
  br label %180

97:                                               ; preds = %85
  br label %172

98:                                               ; preds = %78
  %99 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %100 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %101 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = call i64 @ifa_equal(%struct.sockaddr* %99, %struct.TYPE_8__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %107 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %106)
  %108 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %109 = call i32 @IFA_UNLOCK(%struct.ifaddr* %108)
  br label %180

110:                                              ; preds = %98
  %111 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %112 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %7, align 8
  %114 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %115 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %8, align 8
  %119 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %120 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %9, align 8
  %124 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %125 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %130 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = bitcast %struct.TYPE_7__* %131 to i8*
  %133 = sext i32 %128 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %10, align 8
  br label %135

135:                                              ; preds = %156, %110
  %136 = load i8*, i8** %9, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = icmp ult i8* %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %7, align 8
  %142 = load i8, i8* %140, align 1
  %143 = sext i8 %142 to i32
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  %146 = load i8, i8* %144, align 1
  %147 = sext i8 %146 to i32
  %148 = xor i32 %143, %147
  %149 = load i8*, i8** %9, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %139
  br label %159

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %9, align 8
  br label %135

159:                                              ; preds = %154, %135
  %160 = load i8*, i8** %9, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %165 = icmp eq %struct.ifaddr* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %168 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %167)
  %169 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  store %struct.ifaddr* %169, %struct.ifaddr** %12, align 8
  br label %170

170:                                              ; preds = %166, %163
  br label %171

171:                                              ; preds = %170, %159
  br label %172

172:                                              ; preds = %171, %97
  %173 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %174 = call i32 @IFA_UNLOCK(%struct.ifaddr* %173)
  br label %175

175:                                              ; preds = %172, %75, %41
  %176 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %177 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load %struct.ifaddr*, %struct.ifaddr** %178, align 8
  store %struct.ifaddr* %179, %struct.ifaddr** %6, align 8
  br label %28

180:                                              ; preds = %105, %92, %70, %28
  %181 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  %182 = icmp eq %struct.ifaddr* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %185 = icmp ne %struct.ifaddr* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  store %struct.ifaddr* %187, %struct.ifaddr** %6, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %12, align 8
  br label %190

188:                                              ; preds = %183
  %189 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  store %struct.ifaddr* %189, %struct.ifaddr** %6, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  br label %190

190:                                              ; preds = %188, %186
  br label %191

191:                                              ; preds = %190, %180
  %192 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %193 = call i32 @ifnet_lock_done(%struct.ifnet* %192)
  %194 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %195 = icmp ne %struct.ifaddr* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %198 = call i32 @IFA_REMREF(%struct.ifaddr* %197)
  br label %199

199:                                              ; preds = %196, %191
  %200 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %201 = icmp ne %struct.ifaddr* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %204 = call i32 @IFA_REMREF(%struct.ifaddr* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  store %struct.ifaddr* %206, %struct.ifaddr** %3, align 8
  br label %207

207:                                              ; preds = %205, %20
  %208 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  ret %struct.ifaddr* %208
}

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(%struct.ifaddr*) #1

declare dso_local i64 @ifa_equal(%struct.sockaddr*, %struct.TYPE_8__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
