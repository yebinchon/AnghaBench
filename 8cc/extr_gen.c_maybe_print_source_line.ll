; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_maybe_print_source_line.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_maybe_print_source_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dumpsource = common dso_local global i32 0, align 4
@source_lines = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"# %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @maybe_print_source_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_print_source_line(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @dumpsource, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load i32, i32* @source_lines, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i8** @map_get(i32 %12, i8* %13)
  store i8** %14, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = call i8** @read_source_file(i8* %18)
  store i8** %19, i8*** %5, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %48

23:                                               ; preds = %17
  %24 = load i32, i32* @source_lines, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @map_put(i32 %24, i8* %25, i8** %26)
  br label %28

28:                                               ; preds = %23, %11
  store i32 0, i32* %6, align 4
  %29 = load i8**, i8*** %5, align 8
  store i8** %29, i8*** %7, align 8
  br label %30

30:                                               ; preds = %37, %28
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %7, align 8
  br label %30

40:                                               ; preds = %30
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @emit_nostack(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %40, %22, %10
  ret void
}

declare dso_local i8** @map_get(i32, i8*) #1

declare dso_local i8** @read_source_file(i8*) #1

declare dso_local i32 @map_put(i32, i8*, i8**) #1

declare dso_local i32 @emit_nostack(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
