; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_state_import.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_state_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64* }
%struct.pfsync_state = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.pf_state_key = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.pf_state = type { i64*, i64*, i64, i8*, i8*, i32*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_15__* }

@pf_default_rule = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfsync_state*, %struct.pf_state_key*, %struct.pf_state*)* @pf_state_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_state_import(%struct.pfsync_state* %0, %struct.pf_state_key* %1, %struct.pf_state* %2) #0 {
  %4 = alloca %struct.pfsync_state*, align 8
  %5 = alloca %struct.pf_state_key*, align 8
  %6 = alloca %struct.pf_state*, align 8
  store %struct.pfsync_state* %0, %struct.pfsync_state** %4, align 8
  store %struct.pf_state_key* %1, %struct.pf_state_key** %5, align 8
  store %struct.pf_state* %2, %struct.pf_state** %6, align 8
  %7 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %8 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %7, i32 0, i32 15
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %12 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %15 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %14, i32 0, i32 15
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %19 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %22 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %21, i32 0, i32 14
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %26 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %29 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %28, i32 0, i32 14
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %33 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %36 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %35, i32 0, i32 13
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %40 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %43 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %42, i32 0, i32 13
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %47 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %50 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %49, i32 0, i32 12
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %54 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %57 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %61 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %64 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %67 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %69 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %72 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 8
  %73 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %74 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %77 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %79 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %82 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %84 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %87 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %89 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %92 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %94 = call i32 @pf_calc_state_key_flowhash(%struct.pf_state_key* %93)
  %95 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %96 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %98 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %97, i32 0, i32 12
  %99 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %100 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %99, i32 0, i32 5
  %101 = call i32 @memcpy(i32* %98, i32* %100, i32 4)
  %102 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %103 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %106 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %105, i32 0, i32 11
  store i32 %104, i32* %106, align 8
  %107 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %108 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %107, i32 0, i32 3
  %109 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %110 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %109, i32 0, i32 10
  %111 = call i32 @pf_state_peer_from_pfsync(i32* %108, i32* %110)
  %112 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %113 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %112, i32 0, i32 2
  %114 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %115 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %114, i32 0, i32 9
  %116 = call i32 @pf_state_peer_from_pfsync(i32* %113, i32* %115)
  %117 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %118 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  store %struct.TYPE_15__* @pf_default_rule, %struct.TYPE_15__** %119, align 8
  %120 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %121 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %124 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  %126 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %127 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %126, i32 0, i32 5
  store i32* null, i32** %127, align 8
  %128 = call i8* (...) @pf_time_second()
  %129 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %130 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = call i8* (...) @pf_time_second()
  %132 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %133 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %135 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %3
  %139 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @pf_default_rule, i32 0, i32 0), align 8
  %140 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %141 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i64, i64* %139, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %146 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %150 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = sub i64 0, %148
  %153 = getelementptr i8, i8* %151, i64 %152
  store i8* %153, i8** %150, align 8
  br label %154

154:                                              ; preds = %138, %3
  %155 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %156 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  %157 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %158 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %162 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %161, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  store i64 0, i64* %164, align 8
  %165 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %166 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 1
  store i64 0, i64* %168, align 8
  %169 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %170 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  store i64 0, i64* %172, align 8
  ret void
}

declare dso_local i32 @pf_calc_state_key_flowhash(%struct.pf_state_key*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pf_state_peer_from_pfsync(i32*, i32*) #1

declare dso_local i8* @pf_time_second(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
