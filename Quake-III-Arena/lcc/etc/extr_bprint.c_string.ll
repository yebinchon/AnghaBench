; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_string.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { %struct.string*, [1 x i8] }

@string.list = internal global %struct.string* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.string*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.string*, %struct.string** @string.list, align 8
  store %struct.string* %5, %struct.string** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.string*, %struct.string** %4, align 8
  %8 = icmp ne %struct.string* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.string*, %struct.string** %4, align 8
  %11 = getelementptr inbounds %struct.string, %struct.string* %10, i32 0, i32 1
  %12 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcmp(i8* %12, i8* %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.string*, %struct.string** %4, align 8
  %18 = getelementptr inbounds %struct.string, %struct.string* %17, i32 0, i32 1
  %19 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i64 0, i64 0
  store i8* %19, i8** %2, align 8
  br label %44

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.string*, %struct.string** %4, align 8
  %23 = getelementptr inbounds %struct.string, %struct.string* %22, i32 0, i32 0
  %24 = load %struct.string*, %struct.string** %23, align 8
  store %struct.string* %24, %struct.string** %4, align 8
  br label %6

25:                                               ; preds = %6
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add i64 %27, 16
  %29 = call i32 (i64, ...) bitcast (i32 (...)* @alloc to i32 (i64, ...)*)(i64 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.string*
  store %struct.string* %31, %struct.string** %4, align 8
  %32 = load %struct.string*, %struct.string** %4, align 8
  %33 = getelementptr inbounds %struct.string, %struct.string* %32, i32 0, i32 1
  %34 = getelementptr inbounds [1 x i8], [1 x i8]* %33, i64 0, i64 0
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @strcpy(i8* %34, i8* %35)
  %37 = load %struct.string*, %struct.string** @string.list, align 8
  %38 = load %struct.string*, %struct.string** %4, align 8
  %39 = getelementptr inbounds %struct.string, %struct.string* %38, i32 0, i32 0
  store %struct.string* %37, %struct.string** %39, align 8
  %40 = load %struct.string*, %struct.string** %4, align 8
  store %struct.string* %40, %struct.string** @string.list, align 8
  %41 = load %struct.string*, %struct.string** %4, align 8
  %42 = getelementptr inbounds %struct.string, %struct.string* %41, i32 0, i32 1
  %43 = getelementptr inbounds [1 x i8], [1 x i8]* %42, i64 0, i64 0
  store i8* %43, i8** %2, align 8
  br label %44

44:                                               ; preds = %25, %16
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @alloc(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
