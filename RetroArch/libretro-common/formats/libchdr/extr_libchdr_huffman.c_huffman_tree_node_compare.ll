; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_tree_node_compare.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_tree_node_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"identical node sort keys, should not happen!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @huffman_tree_node_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huffman_tree_node_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.node_t*, align 8
  %7 = alloca %struct.node_t*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.node_t**
  %10 = load %struct.node_t*, %struct.node_t** %9, align 8
  store %struct.node_t* %10, %struct.node_t** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.node_t**
  %13 = load %struct.node_t*, %struct.node_t** %12, align 8
  store %struct.node_t* %13, %struct.node_t** %7, align 8
  %14 = load %struct.node_t*, %struct.node_t** %7, align 8
  %15 = getelementptr inbounds %struct.node_t, %struct.node_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.node_t*, %struct.node_t** %6, align 8
  %18 = getelementptr inbounds %struct.node_t, %struct.node_t* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.node_t*, %struct.node_t** %7, align 8
  %23 = getelementptr inbounds %struct.node_t, %struct.node_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.node_t*, %struct.node_t** %6, align 8
  %26 = getelementptr inbounds %struct.node_t, %struct.node_t* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %2
  %31 = load %struct.node_t*, %struct.node_t** %7, align 8
  %32 = getelementptr inbounds %struct.node_t, %struct.node_t* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.node_t*, %struct.node_t** %6, align 8
  %35 = getelementptr inbounds %struct.node_t, %struct.node_t* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.node_t*, %struct.node_t** %6, align 8
  %44 = getelementptr inbounds %struct.node_t, %struct.node_t* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.node_t*, %struct.node_t** %7, align 8
  %48 = getelementptr inbounds %struct.node_t, %struct.node_t* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = sub nsw i32 %46, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
