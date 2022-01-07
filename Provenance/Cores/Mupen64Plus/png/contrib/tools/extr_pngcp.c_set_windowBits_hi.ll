; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_set_windowBits_hi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_set_windowBits_hi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@MAX_WBITS = common dso_local global i32 0, align 4
@windowBits_IDAT = common dso_local global i32 0, align 4
@range_hi = common dso_local global i64 0, align 8
@range_lo = common dso_local global i64 0, align 8
@windowBits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*)* @set_windowBits_hi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_windowBits_hi(%struct.display* %0) #0 {
  %2 = alloca %struct.display*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %2, align 8
  %5 = load i32, i32* @MAX_WBITS, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @windowBits_IDAT, align 4
  %7 = call i32 @VLSIZE(i32 %6)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.display*, %struct.display** %2, align 8
  %13 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 1
  %17 = shl i32 1, %16
  %18 = icmp ule i32 %14, %17
  br label %19

19:                                               ; preds = %11, %8
  %20 = phi i1 [ false, %8 ], [ %18, %11 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %3, align 4
  br label %8

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* @windowBits_IDAT, align 4
  %31 = call %struct.TYPE_2__* @VLNAME(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @range_hi, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %41

40:                                               ; preds = %29
  br label %25

41:                                               ; preds = %39, %25
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @windowBits_IDAT, align 4
  %48 = call %struct.TYPE_2__* @VLNAME(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 8
  %53 = load i32, i32* @windowBits_IDAT, align 4
  %54 = call %struct.TYPE_2__* @VLNAME(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @range_lo, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = icmp sgt i32 %65, 8
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 9, i32 8
  %69 = load i32, i32* @windowBits_IDAT, align 4
  %70 = call %struct.TYPE_2__* @VLNAME(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 8
  %75 = load i32, i32* %3, align 4
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %77, label %83

77:                                               ; preds = %41
  %78 = load %struct.display*, %struct.display** %2, align 8
  %79 = load i32, i32* @windowBits, align 4
  %80 = call i32 @OPTIND(%struct.display* %78, i32 %79)
  %81 = load %struct.display*, %struct.display** %2, align 8
  %82 = getelementptr inbounds %struct.display, %struct.display* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %41
  ret void
}

declare dso_local i32 @VLSIZE(i32) #1

declare dso_local %struct.TYPE_2__* @VLNAME(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OPTIND(%struct.display*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
