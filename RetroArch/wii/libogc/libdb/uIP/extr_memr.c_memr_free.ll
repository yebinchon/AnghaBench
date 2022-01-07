; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_memr.c_memr_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_memr.c_memr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64 }

@ram_block = common dso_local global i64 0, align 8
@ram_end = common dso_local global i64 0, align 8
@SIZEOF_STRUCT_MEM = common dso_local global i32* null, align 8
@ram_free = common dso_local global %struct.mem* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memr_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mem*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load i64, i64* @ram_block, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = icmp ult i32* %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i64, i64* @ram_end, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = icmp uge i32* %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %7
  br label %39

20:                                               ; preds = %13
  %21 = load i8*, i8** %2, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32*, i32** @SIZEOF_STRUCT_MEM, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = inttoptr i64 %27 to %struct.mem*
  store %struct.mem* %28, %struct.mem** %3, align 8
  %29 = load %struct.mem*, %struct.mem** %3, align 8
  %30 = getelementptr inbounds %struct.mem, %struct.mem* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.mem*, %struct.mem** %3, align 8
  %32 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %33 = icmp ult %struct.mem* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load %struct.mem*, %struct.mem** %3, align 8
  store %struct.mem* %35, %struct.mem** @ram_free, align 8
  br label %36

36:                                               ; preds = %34, %20
  %37 = load %struct.mem*, %struct.mem** %3, align 8
  %38 = call i32 @plug_holes(%struct.mem* %37)
  br label %39

39:                                               ; preds = %36, %19, %6
  ret void
}

declare dso_local i32 @plug_holes(%struct.mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
