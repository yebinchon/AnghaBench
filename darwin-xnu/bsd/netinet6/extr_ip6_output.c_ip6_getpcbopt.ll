; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_getpcbopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_getpcbopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_pktopts = type { i32, i32, i32, %struct.TYPE_2__*, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sockopt = type { i32 }
%struct.ip6_ext = type { i32 }
%struct.in6_pktinfo = type { i32 }

@IP6PO_MINMTU_MCASTONLY = common dso_local global i32 0, align 4
@IP6PO_TEMPADDR_SYSTEM = common dso_local global i32 0, align 4
@IP6PO_DONTFRAG = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_pktopts*, i32, %struct.sockopt*)* @ip6_getpcbopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_getpcbopt(%struct.ip6_pktopts* %0, i32 %1, %struct.sockopt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6_pktopts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockopt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip6_ext*, align 8
  %11 = alloca %struct.in6_pktinfo, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ip6_pktopts* %0, %struct.ip6_pktopts** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockopt* %2, %struct.sockopt** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @IP6PO_MINMTU_MCASTONLY, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @IP6PO_TEMPADDR_SYSTEM, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %196 [
    i32 133, label %19
    i32 129, label %36
    i32 135, label %51
    i32 131, label %74
    i32 130, label %97
    i32 136, label %120
    i32 134, label %143
    i32 128, label %162
    i32 137, label %172
    i32 132, label %186
  ]

19:                                               ; preds = %3
  %20 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %21 = icmp ne %struct.ip6_pktopts* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %24 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %29 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %8, align 8
  br label %35

32:                                               ; preds = %22, %19
  %33 = call i32 @bzero(%struct.in6_pktinfo* %11, i32 4)
  %34 = bitcast %struct.in6_pktinfo* %11 to i8*
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %32, %27
  store i32 4, i32* %9, align 4
  br label %198

36:                                               ; preds = %3
  %37 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %38 = icmp ne %struct.ip6_pktopts* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %41 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %46 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %45, i32 0, i32 8
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %8, align 8
  br label %50

48:                                               ; preds = %39, %36
  %49 = bitcast i32* %12 to i8*
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %48, %44
  store i32 4, i32* %9, align 4
  br label %198

51:                                               ; preds = %3
  %52 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %53 = icmp ne %struct.ip6_pktopts* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %56 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %61 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %8, align 8
  %64 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %65 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.ip6_ext*
  store %struct.ip6_ext* %67, %struct.ip6_ext** %10, align 8
  %68 = load %struct.ip6_ext*, %struct.ip6_ext** %10, align 8
  %69 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  %72 = shl i32 %71, 3
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %59, %54, %51
  br label %198

74:                                               ; preds = %3
  %75 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %76 = icmp ne %struct.ip6_pktopts* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %79 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %84 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %8, align 8
  %87 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %88 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.ip6_ext*
  store %struct.ip6_ext* %90, %struct.ip6_ext** %10, align 8
  %91 = load %struct.ip6_ext*, %struct.ip6_ext** %10, align 8
  %92 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  %95 = shl i32 %94, 3
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %82, %77, %74
  br label %198

97:                                               ; preds = %3
  %98 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %99 = icmp ne %struct.ip6_pktopts* %98, null
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %102 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %107 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %8, align 8
  %110 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %111 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.ip6_ext*
  store %struct.ip6_ext* %113, %struct.ip6_ext** %10, align 8
  %114 = load %struct.ip6_ext*, %struct.ip6_ext** %10, align 8
  %115 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  %118 = shl i32 %117, 3
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %105, %100, %97
  br label %198

120:                                              ; preds = %3
  %121 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %122 = icmp ne %struct.ip6_pktopts* %121, null
  br i1 %122, label %123, label %142

123:                                              ; preds = %120
  %124 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %125 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %123
  %129 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %130 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %8, align 8
  %133 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %134 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to %struct.ip6_ext*
  store %struct.ip6_ext* %136, %struct.ip6_ext** %10, align 8
  %137 = load %struct.ip6_ext*, %struct.ip6_ext** %10, align 8
  %138 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  %141 = shl i32 %140, 3
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %128, %123, %120
  br label %198

143:                                              ; preds = %3
  %144 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %145 = icmp ne %struct.ip6_pktopts* %144, null
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %148 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %147, i32 0, i32 3
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = icmp ne %struct.TYPE_2__* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %153 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = bitcast %struct.TYPE_2__* %154 to i8*
  store i8* %155, i8** %8, align 8
  %156 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %157 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %156, i32 0, i32 3
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %151, %146, %143
  br label %198

162:                                              ; preds = %3
  %163 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %164 = icmp ne %struct.ip6_pktopts* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %167 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %166, i32 0, i32 2
  %168 = bitcast i32* %167 to i8*
  store i8* %168, i8** %8, align 8
  br label %171

169:                                              ; preds = %162
  %170 = bitcast i32* %14 to i8*
  store i8* %170, i8** %8, align 8
  br label %171

171:                                              ; preds = %169, %165
  store i32 4, i32* %9, align 4
  br label %198

172:                                              ; preds = %3
  %173 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %174 = icmp ne %struct.ip6_pktopts* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %177 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @IP6PO_DONTFRAG, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  store i32 1, i32* %13, align 4
  br label %184

183:                                              ; preds = %175, %172
  store i32 0, i32* %13, align 4
  br label %184

184:                                              ; preds = %183, %182
  %185 = bitcast i32* %13 to i8*
  store i8* %185, i8** %8, align 8
  store i32 4, i32* %9, align 4
  br label %198

186:                                              ; preds = %3
  %187 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %188 = icmp ne %struct.ip6_pktopts* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %191 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %190, i32 0, i32 1
  %192 = bitcast i32* %191 to i8*
  store i8* %192, i8** %8, align 8
  br label %195

193:                                              ; preds = %186
  %194 = bitcast i32* %15 to i8*
  store i8* %194, i8** %8, align 8
  br label %195

195:                                              ; preds = %193, %189
  store i32 4, i32* %9, align 4
  br label %198

196:                                              ; preds = %3
  %197 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %197, i32* %4, align 4
  br label %203

198:                                              ; preds = %195, %184, %171, %161, %142, %119, %96, %73, %50, %35
  %199 = load %struct.sockopt*, %struct.sockopt** %7, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @sooptcopyout(%struct.sockopt* %199, i8* %200, i32 %201)
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %198, %196
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @bzero(%struct.in6_pktinfo*, i32) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
