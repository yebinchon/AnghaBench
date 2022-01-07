; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_sbuf.c_sbuf_setpos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_sbuf.c_sbuf_setpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"attempt to seek to a negative position (%d)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"attempt to seek past end of sbuf (%d >= %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbuf_setpos(%struct.sbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %7 = call i32 @assert_sbuf_integrity(%struct.sbuf* %6)
  %8 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %9 = call i32 @assert_sbuf_state(%struct.sbuf* %8, i32 0)
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %12, i8* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %19 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %25 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %22, i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %35 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %2
  store i32 -1, i32* %3, align 4
  br label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %42 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
