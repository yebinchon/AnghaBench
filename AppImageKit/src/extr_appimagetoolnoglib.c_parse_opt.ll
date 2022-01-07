; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetoolnoglib.c_parse_opt.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetoolnoglib.c_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argp_state = type { i32, %struct.arguments* }
%struct.arguments = type { i32, i32, i8*, i8** }

@ARGP_ERR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.argp_state*)* @parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt(i32 %0, i8* %1, %struct.argp_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.argp_state*, align 8
  %8 = alloca %struct.arguments*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.argp_state* %2, %struct.argp_state** %7, align 8
  %9 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %10 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %9, i32 0, i32 1
  %11 = load %struct.arguments*, %struct.arguments** %10, align 8
  store %struct.arguments* %11, %struct.arguments** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %50 [
    i32 118, label %13
    i32 108, label %16
    i32 100, label %19
    i32 129, label %23
    i32 128, label %41
  ]

13:                                               ; preds = %3
  %14 = load %struct.arguments*, %struct.arguments** %8, align 8
  %15 = getelementptr inbounds %struct.arguments, %struct.arguments* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %52

16:                                               ; preds = %3
  %17 = load %struct.arguments*, %struct.arguments** %8, align 8
  %18 = getelementptr inbounds %struct.arguments, %struct.arguments* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.arguments*, %struct.arguments** %8, align 8
  %22 = getelementptr inbounds %struct.arguments, %struct.arguments* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %25 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %30 = call i32 @argp_usage(%struct.argp_state* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.arguments*, %struct.arguments** %8, align 8
  %34 = getelementptr inbounds %struct.arguments, %struct.arguments* %33, i32 0, i32 3
  %35 = load i8**, i8*** %34, align 8
  %36 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %37 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %35, i64 %39
  store i8* %32, i8** %40, align 8
  br label %52

41:                                               ; preds = %3
  %42 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %43 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %48 = call i32 @argp_usage(%struct.argp_state* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %52

50:                                               ; preds = %3
  %51 = load i32, i32* @ARGP_ERR_UNKNOWN, align 4
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %49, %31, %19, %16, %13
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %50
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @argp_usage(%struct.argp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
