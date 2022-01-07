; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_maybe_print_source_loc.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_maybe_print_source_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@source_files = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c".file %ld \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c".loc %ld %d 0\00", align 1
@last_loc = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @maybe_print_source_loc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_print_source_loc(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %60

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  %17 = load i32, i32* @source_files, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @map_get(i32 %17, i8* %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %11
  %23 = load i32, i32* @source_files, align 4
  %24 = call i32 @map_len(i32 %23)
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %4, align 8
  %27 = load i32, i32* @source_files, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @map_put(i32 %27, i8* %28, i8* %30)
  %32 = load i64, i64* %4, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @quote_cstring(i8* %33)
  %35 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %34)
  br label %36

36:                                               ; preds = %22, %11
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @format(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %42)
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** @last_loc, align 8
  %46 = call i64 @strcmp(i8* %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %3, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @maybe_print_source_line(i8* %51, i32 %56)
  br label %58

58:                                               ; preds = %48, %36
  %59 = load i8*, i8** %5, align 8
  store i8* %59, i8** @last_loc, align 8
  br label %60

60:                                               ; preds = %58, %10
  ret void
}

declare dso_local i64 @map_get(i32, i8*) #1

declare dso_local i32 @map_len(i32) #1

declare dso_local i32 @map_put(i32, i8*, i8*) #1

declare dso_local i32 @emit(i8*, ...) #1

declare dso_local i32 @quote_cstring(i8*) #1

declare dso_local i8* @format(i8*, i64, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @maybe_print_source_line(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
