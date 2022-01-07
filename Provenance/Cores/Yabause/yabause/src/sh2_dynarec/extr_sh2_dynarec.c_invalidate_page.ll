; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_invalidate_page.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_invalidate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_entry = type { %struct.ll_entry*, i64, i32 }

@jump_in = common dso_local global %struct.ll_entry** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"INVALIDATE: %x\0A\00", align 1
@jump_out = common dso_local global %struct.ll_entry** null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"INVALIDATE: kill pointer to %x (%x)\0A\00", align 1
@BASE_ADDR = common dso_local global i64 0, align 8
@needs_clear_cache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invalidate_page(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ll_entry*, align 8
  %4 = alloca %struct.ll_entry*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load %struct.ll_entry**, %struct.ll_entry*** @jump_in, align 8
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds %struct.ll_entry*, %struct.ll_entry** %6, i64 %7
  %9 = load %struct.ll_entry*, %struct.ll_entry** %8, align 8
  store %struct.ll_entry* %9, %struct.ll_entry** %3, align 8
  %10 = load %struct.ll_entry**, %struct.ll_entry*** @jump_in, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.ll_entry*, %struct.ll_entry** %10, i64 %11
  store %struct.ll_entry* null, %struct.ll_entry** %12, align 8
  br label %13

13:                                               ; preds = %16, %1
  %14 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %15 = icmp ne %struct.ll_entry* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %18 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, i32, ...) @inv_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %22 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @remove_hash(i32 %23)
  %25 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %26 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %25, i32 0, i32 0
  %27 = load %struct.ll_entry*, %struct.ll_entry** %26, align 8
  store %struct.ll_entry* %27, %struct.ll_entry** %4, align 8
  %28 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %29 = call i32 @free(%struct.ll_entry* %28)
  %30 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  store %struct.ll_entry* %30, %struct.ll_entry** %3, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.ll_entry**, %struct.ll_entry*** @jump_out, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds %struct.ll_entry*, %struct.ll_entry** %32, i64 %33
  %35 = load %struct.ll_entry*, %struct.ll_entry** %34, align 8
  store %struct.ll_entry* %35, %struct.ll_entry** %3, align 8
  %36 = load %struct.ll_entry**, %struct.ll_entry*** @jump_out, align 8
  %37 = load i64, i64* %2, align 8
  %38 = getelementptr inbounds %struct.ll_entry*, %struct.ll_entry** %36, i64 %37
  store %struct.ll_entry* null, %struct.ll_entry** %38, align 8
  br label %39

39:                                               ; preds = %42, %31
  %40 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %41 = icmp ne %struct.ll_entry* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %44 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %47 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i8*, i32, ...) @inv_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %49)
  %51 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %52 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @kill_pointer(i64 %53)
  store i64 %54, i64* %5, align 8
  %55 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %56 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %55, i32 0, i32 0
  %57 = load %struct.ll_entry*, %struct.ll_entry** %56, align 8
  store %struct.ll_entry* %57, %struct.ll_entry** %4, align 8
  %58 = load %struct.ll_entry*, %struct.ll_entry** %3, align 8
  %59 = call i32 @free(%struct.ll_entry* %58)
  %60 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  store %struct.ll_entry* %60, %struct.ll_entry** %3, align 8
  br label %39

61:                                               ; preds = %39
  ret void
}

declare dso_local i32 @inv_debug(i8*, i32, ...) #1

declare dso_local i32 @remove_hash(i32) #1

declare dso_local i32 @free(%struct.ll_entry*) #1

declare dso_local i64 @kill_pointer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
