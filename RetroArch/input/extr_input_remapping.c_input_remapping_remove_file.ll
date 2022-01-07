; ModuleID = '/home/carl/AnghaBench/RetroArch/input/extr_input_remapping.c_input_remapping_remove_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/extr_input_remapping.c_input_remapping_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".rmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_remapping_remove_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 1
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %6, align 8
  %23 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @fill_pathname_join(i8* %28, i32 %32, i8* %33, i64 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @fill_pathname_noext(i8* %36, i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @filestream_delete(i8* %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %3, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

declare dso_local i32 @fill_pathname_join(i8*, i32, i8*, i64) #1

declare dso_local i32 @fill_pathname_noext(i8*, i8*, i8*, i64) #1

declare dso_local i64 @filestream_delete(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
