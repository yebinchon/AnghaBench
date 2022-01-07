; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ll_remove_matching_addrs.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ll_remove_matching_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_entry = type { %struct.ll_entry*, i32, i64 }

@MAX_OUTPUT_BLOCK_SIZE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"EXP: Remove pointer to %x (%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ll_remove_matching_addrs(%struct.ll_entry** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ll_entry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ll_entry*, align 8
  store %struct.ll_entry** %0, %struct.ll_entry*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %70, %3
  %9 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %10 = load %struct.ll_entry*, %struct.ll_entry** %9, align 8
  %11 = icmp ne %struct.ll_entry* %10, null
  br i1 %11, label %12, label %71

12:                                               ; preds = %8
  %13 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %14 = load %struct.ll_entry*, %struct.ll_entry** %13, align 8
  %15 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %41, label %24

24:                                               ; preds = %12
  %25 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %26 = load %struct.ll_entry*, %struct.ll_entry** %25, align 8
  %27 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8*, i8** @MAX_OUTPUT_BLOCK_SIZE, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %24, %12
  %42 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %43 = load %struct.ll_entry*, %struct.ll_entry** %42, align 8
  %44 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %48 = load %struct.ll_entry*, %struct.ll_entry** %47, align 8
  %49 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @inv_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %50)
  %52 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %53 = load %struct.ll_entry*, %struct.ll_entry** %52, align 8
  %54 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @remove_hash(i32 %55)
  %57 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %58 = load %struct.ll_entry*, %struct.ll_entry** %57, align 8
  %59 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %58, i32 0, i32 0
  %60 = load %struct.ll_entry*, %struct.ll_entry** %59, align 8
  store %struct.ll_entry* %60, %struct.ll_entry** %7, align 8
  %61 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %62 = load %struct.ll_entry*, %struct.ll_entry** %61, align 8
  %63 = call i32 @free(%struct.ll_entry* %62)
  %64 = load %struct.ll_entry*, %struct.ll_entry** %7, align 8
  %65 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  store %struct.ll_entry* %64, %struct.ll_entry** %65, align 8
  br label %70

66:                                               ; preds = %24
  %67 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %68 = load %struct.ll_entry*, %struct.ll_entry** %67, align 8
  %69 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %68, i32 0, i32 0
  store %struct.ll_entry** %69, %struct.ll_entry*** %4, align 8
  br label %70

70:                                               ; preds = %66, %41
  br label %8

71:                                               ; preds = %8
  ret void
}

declare dso_local i32 @inv_debug(i8*, i32, i32) #1

declare dso_local i32 @remove_hash(i32) #1

declare dso_local i32 @free(%struct.ll_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
