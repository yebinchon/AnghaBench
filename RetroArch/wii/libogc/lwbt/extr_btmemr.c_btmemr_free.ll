; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemr.c_btmemr_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemr.c_btmemr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64 }

@ram_block = common dso_local global i64 0, align 8
@ram_end = common dso_local global i64 0, align 8
@SIZEOF_STRUCT_MEM = common dso_local global i32* null, align 8
@ram_free = common dso_local global %struct.mem* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btmemr_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %44

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i64, i64* @ram_block, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = icmp ult i32* %10, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i64, i64* @ram_end, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = icmp uge i32* %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %8
  br label %44

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @_CPU_ISR_Disable(i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32*, i32** @SIZEOF_STRUCT_MEM, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = inttoptr i64 %30 to %struct.mem*
  store %struct.mem* %31, %struct.mem** %4, align 8
  %32 = load %struct.mem*, %struct.mem** %4, align 8
  %33 = getelementptr inbounds %struct.mem, %struct.mem* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.mem*, %struct.mem** %4, align 8
  %35 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %36 = icmp ult %struct.mem* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load %struct.mem*, %struct.mem** %4, align 8
  store %struct.mem* %38, %struct.mem** @ram_free, align 8
  br label %39

39:                                               ; preds = %37, %21
  %40 = load %struct.mem*, %struct.mem** %4, align 8
  %41 = call i32 @plug_holes(%struct.mem* %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @_CPU_ISR_Restore(i32 %42)
  br label %44

44:                                               ; preds = %39, %20, %7
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @plug_holes(%struct.mem*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
