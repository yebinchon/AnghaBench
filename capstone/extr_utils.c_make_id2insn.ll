; ModuleID = '/home/carl/AnghaBench/capstone/extr_utils.c_make_id2insn.c'
source_filename = "/home/carl/AnghaBench/capstone/extr_utils.c_make_id2insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (%struct.TYPE_3__*, i32)* @make_id2insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @make_id2insn(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 2
  store i16 %14, i16* %5, align 2
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = add nsw i32 %16, 1
  %18 = trunc i32 %17 to i16
  %19 = call i64 @cs_mem_calloc(i16 zeroext %18, i32 2)
  %20 = inttoptr i64 %19 to i16*
  store i16* %20, i16** %7, align 8
  store i16 1, i16* %6, align 2
  br label %21

21:                                               ; preds = %37, %2
  %22 = load i16, i16* %6, align 2
  %23 = zext i16 %22 to i32
  %24 = load i32, i32* %4, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i16, i16* %6, align 2
  %28 = load i16*, i16** %7, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds i16, i16* %28, i64 %35
  store i16 %27, i16* %36, align 2
  br label %37

37:                                               ; preds = %26
  %38 = load i16, i16* %6, align 2
  %39 = add i16 %38, 1
  store i16 %39, i16* %6, align 2
  br label %21

40:                                               ; preds = %21
  %41 = load i16*, i16** %7, align 8
  ret i16* %41
}

declare dso_local i64 @cs_mem_calloc(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
