; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ll_add_nodup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ll_add_nodup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_entry = type { i32, %struct.ll_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ll_add_nodup(%struct.ll_entry** %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ll_entry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ll_entry*, align 8
  store %struct.ll_entry** %0, %struct.ll_entry*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %9 = load %struct.ll_entry*, %struct.ll_entry** %8, align 8
  store %struct.ll_entry* %9, %struct.ll_entry** %7, align 8
  br label %10

10:                                               ; preds = %20, %3
  %11 = load %struct.ll_entry*, %struct.ll_entry** %7, align 8
  %12 = icmp ne %struct.ll_entry* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.ll_entry*, %struct.ll_entry** %7, align 8
  %15 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %29

20:                                               ; preds = %13
  %21 = load %struct.ll_entry*, %struct.ll_entry** %7, align 8
  %22 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %21, i32 0, i32 1
  %23 = load %struct.ll_entry*, %struct.ll_entry** %22, align 8
  store %struct.ll_entry* %23, %struct.ll_entry** %7, align 8
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.ll_entry**, %struct.ll_entry*** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @ll_add(%struct.ll_entry** %25, i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @ll_add(%struct.ll_entry**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
