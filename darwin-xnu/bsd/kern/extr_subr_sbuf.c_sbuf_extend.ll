; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_sbuf.c_sbuf_extend.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_sbuf.c_sbuf_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32, i8* }

@SBUF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbuf*, i32)* @sbuf_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbuf_extend(%struct.sbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %9 = call i32 @SBUF_CANEXTEND(%struct.sbuf* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %14 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @sbuf_extendsize(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @SBMALLOC(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %53

25:                                               ; preds = %12
  %26 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %27 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %31 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bcopy(i8* %28, i8* %29, i32 %32)
  %34 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %35 = call i64 @SBUF_ISDYNAMIC(%struct.sbuf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %39 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @SBFREE(i8* %40)
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %44 = load i32, i32* @SBUF_DYNAMIC, align 4
  %45 = call i32 @SBUF_SETFLAG(%struct.sbuf* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %49 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %52 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %24, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @SBUF_CANEXTEND(%struct.sbuf*) #1

declare dso_local i32 @sbuf_extendsize(i32) #1

declare dso_local i64 @SBMALLOC(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @SBUF_ISDYNAMIC(%struct.sbuf*) #1

declare dso_local i32 @SBFREE(i8*) #1

declare dso_local i32 @SBUF_SETFLAG(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
