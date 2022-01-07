; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_bcleanbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_bcleanbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32*, i64, i64, i32, i64, i8*, i8*, i8*, i64, i64 }

@B_DELWRI = common dso_local global i32 0, align 4
@BL_WANTDEALLOC = common dso_local global i32 0, align 4
@buf_mtxp = common dso_local global i32 0, align 4
@bufqueues = common dso_local global i32* null, align 8
@BQ_LAUNDRY = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@BL_BUSY = common dso_local global i32 0, align 4
@buf_busycount = common dso_local global i32 0, align 4
@B_META = common dso_local global i32 0, align 4
@TR_BRELSE = common dso_local global i32 0, align 4
@B_ZALLOC = common dso_local global i32 0, align 4
@B_LOCKED = common dso_local global i32 0, align 4
@B_AGE = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@B_NOCACHE = common dso_local global i32 0, align 4
@B_FUA = common dso_local global i32 0, align 4
@BQ_EMPTY = common dso_local global i64 0, align 8
@invalhash = common dso_local global i32 0, align 4
@B_HDRALLOC = common dso_local global i32 0, align 4
@NODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcleanbuf(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %7 = call i32 @bremfree_locked(%struct.TYPE_12__* %6)
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @B_DELWRI, align 4
  %12 = call i64 @ISSET(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BL_WANTDEALLOC, align 4
  %22 = call i32 @SET(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %14
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i32 @bmovelaundry(%struct.TYPE_12__* %24)
  %26 = load i32, i32* @buf_mtxp, align 4
  %27 = call i32 @lck_mtx_unlock(i32 %26)
  %28 = load i32*, i32** @bufqueues, align 8
  %29 = load i64, i64* @BQ_LAUNDRY, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @wakeup(i32* %30)
  %32 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %33 = call i32 @thread_block(i32 %32)
  %34 = load i32, i32* @buf_mtxp, align 4
  %35 = call i32 @lck_mtx_lock_spin(i32 %34)
  store i32 1, i32* %3, align 4
  br label %174

36:                                               ; preds = %2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BL_BUSY, align 4
  %41 = call i32 @SET(i32 %39, i32 %40)
  %42 = load i32, i32* @buf_busycount, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @buf_busycount, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = call i32 @bremhash(%struct.TYPE_12__* %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 22
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 @brelvp_locked(%struct.TYPE_12__* %51)
  br label %53

53:                                               ; preds = %50, %36
  %54 = load i32, i32* @buf_mtxp, align 4
  %55 = call i32 @lck_mtx_unlock(i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = call i32 @BLISTNONE(%struct.TYPE_12__* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @B_META, align 4
  %62 = call i64 @ISSET(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = call i32 @buf_free_meta_store(%struct.TYPE_12__* %65)
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i32, i32* @TR_BRELSE, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 22
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 21
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @pack(i64 %71, i64 %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 14
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @trace(i32 %68, i32 %75, i64 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = call i32 @buf_release_credentials(%struct.TYPE_12__* %80)
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %124

84:                                               ; preds = %67
  %85 = load i32, i32* @buf_mtxp, align 4
  %86 = call i32 @lck_mtx_lock_spin(i32 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @B_META, align 4
  %91 = load i32, i32* @B_ZALLOC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @B_DELWRI, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @B_LOCKED, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @B_AGE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @B_ASYNC, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @B_NOCACHE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @B_FUA, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @CLR(i32 %89, i32 %104)
  %106 = load i64, i64* @BQ_EMPTY, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = call i32 @binshash(%struct.TYPE_12__* %109, i32* @invalhash)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = load i32*, i32** @bufqueues, align 8
  %113 = load i64, i64* @BQ_EMPTY, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i64, i64* @BQ_EMPTY, align 8
  %116 = call i32 @binsheadfree(%struct.TYPE_12__* %111, i32* %114, i64 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @BL_BUSY, align 4
  %121 = call i32 @CLR(i32 %119, i32 %120)
  %122 = load i32, i32* @buf_busycount, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* @buf_busycount, align 4
  br label %173

124:                                              ; preds = %67
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 21
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 20
  store i8* null, i8** %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 19
  store i8* null, i8** %132, align 8
  %133 = load i32, i32* @BL_BUSY, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @B_HDRALLOC, align 4
  %140 = and i32 %138, %139
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 17
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* @NODEV, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 16
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 14
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 15
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 13
  store i32* null, i32** %153, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 12
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 11
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 10
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 8
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 9
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 6
  store i64 0, i64* %165, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 7
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 5
  %170 = call i32 @bzero(i32* %169, i32 4)
  %171 = load i32, i32* @buf_mtxp, align 4
  %172 = call i32 @lck_mtx_lock_spin(i32 %171)
  br label %173

173:                                              ; preds = %124, %84
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %23
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @bremfree_locked(%struct.TYPE_12__*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @bmovelaundry(%struct.TYPE_12__*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local i32 @bremhash(%struct.TYPE_12__*) #1

declare dso_local i32 @brelvp_locked(%struct.TYPE_12__*) #1

declare dso_local i32 @BLISTNONE(%struct.TYPE_12__*) #1

declare dso_local i32 @buf_free_meta_store(%struct.TYPE_12__*) #1

declare dso_local i32 @trace(i32, i32, i64) #1

declare dso_local i32 @pack(i64, i64) #1

declare dso_local i32 @buf_release_credentials(%struct.TYPE_12__*) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @binshash(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @binsheadfree(%struct.TYPE_12__*, i32*, i64) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
