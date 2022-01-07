; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kcdata_record_thread_iostats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kcdata_record_thread_iostats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.io_stats_snapshot = type { i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@IO_NUM_PRIORITIES = common dso_local global i32 0, align 4
@STACKSHOT_IO_NUM_PRIORITIES = common dso_local global i32 0, align 4
@STACKSHOT_KCTYPE_IOSTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*)* @kcdata_record_thread_iostats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcdata_record_thread_iostats(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.io_stats_snapshot*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %9 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @IO_NUM_PRIORITIES, align 4
  %11 = load i32, i32* @STACKSHOT_IO_NUM_PRIORITIES, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %211

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = call i32 @memory_iszero(%struct.TYPE_15__* %22, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %211, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @STACKSHOT_KCTYPE_IOSTATS, align 4
  %28 = call i32 @kcdata_get_memory_addr(i32 %26, i32 %27, i32 112, i64* %6)
  %29 = call i32 @kcd_exit_on_error(i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = inttoptr i64 %30 to %struct.io_stats_snapshot*
  store %struct.io_stats_snapshot* %31, %struct.io_stats_snapshot** %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %39 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %38, i32 0, i32 13
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %47 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %46, i32 0, i32 12
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %53, %59
  %61 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %62 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %61, i32 0, i32 11
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %68, %74
  %76 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %77 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %76, i32 0, i32 10
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %85 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %84, i32 0, i32 9
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %93 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %92, i32 0, i32 8
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %99, %105
  %107 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %108 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %107, i32 0, i32 7
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %114, %120
  %122 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %123 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %122, i32 0, i32 6
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %131 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %130, i32 0, i32 5
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %139 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %138, i32 0, i32 4
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %145, %151
  %153 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %154 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %153, i32 0, i32 3
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %160, %166
  %168 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %169 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %207, %25
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @IO_NUM_PRIORITIES, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %210

174:                                              ; preds = %170
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %186 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 %184, i32* %190, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.io_stats_snapshot*, %struct.io_stats_snapshot** %7, align 8
  %202 = getelementptr inbounds %struct.io_stats_snapshot, %struct.io_stats_snapshot* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %200, i32* %206, align 4
  br label %207

207:                                              ; preds = %174
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %170

210:                                              ; preds = %170
  br label %211

211:                                              ; preds = %210, %19, %2
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memory_iszero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @kcd_exit_on_error(i32) #1

declare dso_local i32 @kcdata_get_memory_addr(i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
