; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_create_shadow_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_create_shadow_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, void (%struct.TYPE_11__*, i8*)*, i64, i64, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*, i32, i8*, i32, i32, i32 }

@DBG_FUNC_START = common dso_local global i32 0, align 4
@B_META = common dso_local global i32 0, align 4
@BL_IOBUF = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@B_ZALLOC = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@B_FUA = common dso_local global i32 0, align 4
@B_CALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@buf_mtxp = common dso_local global i32 0, align 4
@BL_SHADOW = common dso_local global i32 0, align 4
@BL_IOBUF_ALLOC = common dso_local global i32 0, align 4
@BL_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, i64, i64, void (%struct.TYPE_11__*, i8*)*, i8*, i32)* @buf_create_shadow_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @buf_create_shadow_internal(%struct.TYPE_11__* %0, i64 %1, i64 %2, void (%struct.TYPE_11__*, i8*)* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca void (%struct.TYPE_11__*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store void (%struct.TYPE_11__*, i8*)* %3, void (%struct.TYPE_11__*, i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @DBG_FUNC_START, align 4
  %16 = or i32 -1145323520, %15
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = call i32 @KERNEL_DEBUG(i32 %16, %struct.TYPE_11__* %17, i64 0, i32 0, %struct.TYPE_11__* null, i32 0)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @B_META, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %6
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BL_IOBUF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25, %6
  %33 = load i32, i32* @DBG_FUNC_END, align 4
  %34 = or i32 -1145323520, %33
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = call i32 @KERNEL_DEBUG(i32 %34, %struct.TYPE_11__* %35, i64 0, i32 0, %struct.TYPE_11__* null, i32 0)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  br label %186

37:                                               ; preds = %25
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call %struct.TYPE_11__* @alloc_io_buf(i32 %40, i32 %41)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %14, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @B_META, align 4
  %47 = load i32, i32* @B_ZALLOC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @B_ASYNC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @B_READ, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @B_FUA, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %45, %54
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 13
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 8
  %68 = load void (%struct.TYPE_11__*, i8*)*, void (%struct.TYPE_11__*, i8*)** %11, align 8
  %69 = icmp ne void (%struct.TYPE_11__*, i8*)* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %37
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 11
  store i8* %71, i8** %73, align 8
  %74 = load void (%struct.TYPE_11__*, i8*)*, void (%struct.TYPE_11__*, i8*)** %11, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  store void (%struct.TYPE_11__*, i8*)* %74, void (%struct.TYPE_11__*, i8*)** %76, align 8
  %77 = load i32, i32* @B_CALL, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %70, %37
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @FALSE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %135

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  br label %109

103:                                              ; preds = %86
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %103, %99
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 10
  %113 = bitcast i32* %112 to %struct.TYPE_11__**
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %113, align 8
  %114 = load i32, i32* @buf_mtxp, align 4
  %115 = call i32 @lck_mtx_lock_spin(i32 %114)
  %116 = load i32, i32* @BL_SHADOW, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 9
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 9
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 9
  store %struct.TYPE_11__* %126, %struct.TYPE_11__** %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load i32, i32* @buf_mtxp, align 4
  %134 = call i32 @lck_mtx_unlock(i32 %133)
  br label %176

135:                                              ; preds = %82
  %136 = load i64, i64* %10, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 4
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 4
  store i64 %149, i64* %151, align 8
  br label %163

152:                                              ; preds = %135
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @allocbuf(%struct.TYPE_11__* %153, i32 %156)
  %158 = load i32, i32* @BL_IOBUF_ALLOC, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %152, %138
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @bcopy(i32 %167, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %163, %109
  %177 = load i32, i32* @DBG_FUNC_END, align 4
  %178 = or i32 -1145323520, %177
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %184 = call i32 @KERNEL_DEBUG(i32 %178, %struct.TYPE_11__* %179, i64 %182, i32 0, %struct.TYPE_11__* %183, i32 0)
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %7, align 8
  br label %186

186:                                              ; preds = %176, %32
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %187
}

declare dso_local i32 @KERNEL_DEBUG(i32, %struct.TYPE_11__*, i64, i32, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @alloc_io_buf(i32, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @allocbuf(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
