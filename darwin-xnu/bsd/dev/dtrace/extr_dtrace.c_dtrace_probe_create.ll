; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_probe_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_probe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, i8*, i8*, i8*, i8*, i64 }

@dtrace_provider = common dso_local global %struct.TYPE_12__* null, align 8
@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4
@VM_BESTFIT = common dso_local global i32 0, align 4
@VM_SLEEP = common dso_local global i32 0, align 4
@dtrace_probe_t_zone = common dso_local global i32 0, align 4
@dtrace_probegen = common dso_local global i32 0, align 4
@dtrace_byprov = common dso_local global i32 0, align 4
@dtrace_bymod = common dso_local global i32 0, align 4
@dtrace_byfunc = common dso_local global i32 0, align 4
@dtrace_byname = common dso_local global i32 0, align 4
@dtrace_nprobes = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global %struct.TYPE_13__** null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_probe_create(i64 %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__**, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__**, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %15, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dtrace_provider, align 8
  %24 = icmp eq %struct.TYPE_12__* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %27 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %26)
  br label %30

28:                                               ; preds = %6
  %29 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @dtrace_arena, align 4
  %32 = load i32, i32* @VM_BESTFIT, align 4
  %33 = load i32, i32* @VM_SLEEP, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @vmem_alloc(i32 %31, i32 1, i32 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* @dtrace_probe_t_zone, align 4
  %38 = call %struct.TYPE_13__* @zalloc(i32 %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %13, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %40 = call i32 @bzero(%struct.TYPE_13__* %39, i32 56)
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @dtrace_probegen, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @dtrace_probegen, align 4
  %46 = sext i32 %44 to i64
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 7
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @dtrace_strref(i8* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i8* @dtrace_strref(i8* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i8* @dtrace_strref(i8* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %69, align 8
  %70 = load i32, i32* @dtrace_byprov, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %72 = call i32 @dtrace_hash_add(i32 %70, %struct.TYPE_13__* %71)
  %73 = load i32, i32* @dtrace_bymod, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %75 = call i32 @dtrace_hash_add(i32 %73, %struct.TYPE_13__* %74)
  %76 = load i32, i32* @dtrace_byfunc, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %78 = call i32 @dtrace_hash_add(i32 %76, %struct.TYPE_13__* %77)
  %79 = load i32, i32* @dtrace_byname, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %81 = call i32 @dtrace_hash_add(i32 %79, %struct.TYPE_13__* %80)
  %82 = load i32, i32* %16, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @dtrace_nprobes, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %136

86:                                               ; preds = %30
  %87 = load i32, i32* @dtrace_nprobes, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 8
  store i64 %89, i64* %17, align 8
  %90 = load i64, i64* %17, align 8
  %91 = shl i64 %90, 1
  store i64 %91, i64* %18, align 8
  %92 = load i64, i64* %18, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i64, i64* %17, align 8
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @dtrace_probes, align 8
  %100 = icmp eq %struct.TYPE_13__** %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  store i64 8, i64* %18, align 8
  br label %103

103:                                              ; preds = %94, %86
  %104 = load i64, i64* %18, align 8
  %105 = load i32, i32* @KM_SLEEP, align 4
  %106 = call %struct.TYPE_13__** @kmem_zalloc(i64 %104, i32 %105)
  store %struct.TYPE_13__** %106, %struct.TYPE_13__*** %14, align 8
  %107 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @dtrace_probes, align 8
  %108 = icmp eq %struct.TYPE_13__** %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i64, i64* %17, align 8
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @ASSERT(i32 %112)
  %114 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  store %struct.TYPE_13__** %114, %struct.TYPE_13__*** @dtrace_probes, align 8
  store i32 1, i32* @dtrace_nprobes, align 4
  br label %129

115:                                              ; preds = %103
  %116 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @dtrace_probes, align 8
  store %struct.TYPE_13__** %116, %struct.TYPE_13__*** %19, align 8
  %117 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %19, align 8
  %118 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  %119 = load i64, i64* %17, align 8
  %120 = call i32 @bcopy(%struct.TYPE_13__** %117, %struct.TYPE_13__** %118, i64 %119)
  %121 = call i32 (...) @dtrace_membar_producer()
  %122 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  store %struct.TYPE_13__** %122, %struct.TYPE_13__*** @dtrace_probes, align 8
  %123 = call i32 (...) @dtrace_sync()
  %124 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %19, align 8
  %125 = load i64, i64* %17, align 8
  %126 = call i32 @kmem_free(%struct.TYPE_13__** %124, i64 %125)
  %127 = load i32, i32* @dtrace_nprobes, align 4
  %128 = shl i32 %127, 1
  store i32 %128, i32* @dtrace_nprobes, align 4
  br label %129

129:                                              ; preds = %115, %109
  %130 = load i32, i32* %16, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* @dtrace_nprobes, align 4
  %133 = icmp slt i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @ASSERT(i32 %134)
  br label %136

136:                                              ; preds = %129, %30
  %137 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @dtrace_probes, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %137, i64 %140
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = icmp eq %struct.TYPE_13__* %142, null
  %144 = zext i1 %143 to i32
  %145 = call i32 @ASSERT(i32 %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %147 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @dtrace_probes, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %147, i64 %150
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** %151, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dtrace_provider, align 8
  %158 = icmp ne %struct.TYPE_12__* %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %136
  %160 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  br label %161

161:                                              ; preds = %159, %136
  %162 = load i32, i32* %16, align 4
  ret i32 %162
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @vmem_alloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @dtrace_strref(i8*) #1

declare dso_local i32 @dtrace_hash_add(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_13__** @kmem_zalloc(i64, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_13__**, %struct.TYPE_13__**, i64) #1

declare dso_local i32 @dtrace_membar_producer(...) #1

declare dso_local i32 @dtrace_sync(...) #1

declare dso_local i32 @kmem_free(%struct.TYPE_13__**, i64) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
