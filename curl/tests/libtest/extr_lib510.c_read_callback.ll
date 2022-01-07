; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib510.c_read_callback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib510.c_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WriteThis = type { i64 }

@post = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"read buffer is too small to run test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.WriteThis*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.WriteThis*
  store %struct.WriteThis* %14, %struct.WriteThis** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = mul i64 %15, %16
  %18 = icmp ult i64 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %51

20:                                               ; preds = %4
  %21 = load i8**, i8*** @post, align 8
  %22 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %23 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %20
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %32, %33
  %35 = load i64, i64* %12, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %51

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  %45 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %46 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %5, align 8
  br label %51

50:                                               ; preds = %20
  store i64 0, i64* %5, align 8
  br label %51

51:                                               ; preds = %50, %40, %37, %19
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
