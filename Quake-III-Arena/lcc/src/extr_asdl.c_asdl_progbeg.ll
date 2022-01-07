; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_progbeg.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_progbeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pickle = common dso_local global %struct.TYPE_3__* null, align 8
@interfaces = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @asdl_progbeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asdl_progbeg(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = call i32 @Seq_new(i32 0)
  %7 = call i32 @Seq_new(i32 0)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @Seq_new(i32 0)
  %10 = call %struct.TYPE_3__* @rcc_program(i32 1, i32 0, i32 %6, i32 %7, i32 %8, i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** @pickle, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pickle, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8**, i8*** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 1
  %31 = call i32 @Text_box(i8* %23, i64 %30)
  %32 = call i32 @to_generic_string(i32 %31)
  %33 = call i32 @Seq_addhi(i32 %18, i32 %32)
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pickle, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @interfaces, align 4
  ret void
}

declare dso_local %struct.TYPE_3__* @rcc_program(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Seq_new(i32) #1

declare dso_local i32 @Seq_addhi(i32, i32) #1

declare dso_local i32 @to_generic_string(i32) #1

declare dso_local i32 @Text_box(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
