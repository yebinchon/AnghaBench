; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_parse_arg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_parse_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i32 }

@FN_INSIDE = common dso_local global i32 0, align 4
@FN_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arg*, i8**)* @parse_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_arg(%struct.arg* %0, i8** %1) #0 {
  %3 = alloca %struct.arg*, align 8
  %4 = alloca i8**, align 8
  store %struct.arg* %0, %struct.arg** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @color_of(i8* %7)
  %9 = load %struct.arg*, %struct.arg** %3, align 8
  %10 = getelementptr inbounds %struct.arg, %struct.arg* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @width_of(i8* %13)
  %15 = load %struct.arg*, %struct.arg** %3, align 8
  %16 = getelementptr inbounds %struct.arg, %struct.arg* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.arg*, %struct.arg** %3, align 8
  %21 = getelementptr inbounds %struct.arg, %struct.arg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FN_INSIDE, align 4
  %24 = call i8* @shape_of(i8* %19, i32 %22, i32 %23)
  %25 = load %struct.arg*, %struct.arg** %3, align 8
  %26 = getelementptr inbounds %struct.arg, %struct.arg* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.arg*, %struct.arg** %3, align 8
  %31 = getelementptr inbounds %struct.arg, %struct.arg* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FN_CHECK, align 4
  %34 = call i8* @shape_of(i8* %29, i32 %32, i32 %33)
  %35 = load %struct.arg*, %struct.arg** %3, align 8
  %36 = getelementptr inbounds %struct.arg, %struct.arg* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i8**, i8*** %4, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @coordinate_of(i8* %39)
  %41 = load %struct.arg*, %struct.arg** %3, align 8
  %42 = getelementptr inbounds %struct.arg, %struct.arg* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @coordinate_of(i8* %45)
  %47 = load %struct.arg*, %struct.arg** %3, align 8
  %48 = getelementptr inbounds %struct.arg, %struct.arg* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 5
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @coordinate_of(i8* %51)
  %53 = load %struct.arg*, %struct.arg** %3, align 8
  %54 = getelementptr inbounds %struct.arg, %struct.arg* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8**, i8*** %4, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 6
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @coordinate_of(i8* %57)
  %59 = load %struct.arg*, %struct.arg** %3, align 8
  %60 = getelementptr inbounds %struct.arg, %struct.arg* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  ret void
}

declare dso_local i32 @color_of(i8*) #1

declare dso_local i32 @width_of(i8*) #1

declare dso_local i8* @shape_of(i8*, i32, i32) #1

declare dso_local i8* @coordinate_of(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
