; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_client.c_client_recv.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_client.c_client_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@client_enabled = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4
@queue = common dso_local global i8* null, align 8
@qsize = common dso_local global i32 0, align 4
@bytes_received = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @client_recv() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @client_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %76

9:                                                ; preds = %0
  store i8* null, i8** %2, align 8
  %10 = call i32 @mtx_lock(i32* @mutex)
  %11 = load i8*, i8** @queue, align 8
  %12 = load i32, i32* @qsize, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %27, %9
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** @queue, align 8
  %19 = icmp uge i8* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 10
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ false, %16 ], [ %24, %20 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %29, i8** %3, align 8
  br label %16

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** @queue, align 8
  %33 = icmp uge i8* %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** @queue, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = add nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 1, %44
  %46 = trunc i64 %45 to i32
  %47 = call i8* @malloc(i32 %46)
  store i8* %47, i8** %2, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = load i8*, i8** @queue, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 1, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i8* %48, i8* %49, i32 %53)
  %55 = load i8*, i8** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* @qsize, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %5, align 4
  %62 = load i8*, i8** @queue, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @memmove(i8* %62, i8* %64, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @qsize, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* @qsize, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @bytes_received, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* @bytes_received, align 4
  br label %73

73:                                               ; preds = %34, %30
  %74 = call i32 @mtx_unlock(i32* @mutex)
  %75 = load i8*, i8** %2, align 8
  store i8* %75, i8** %1, align 8
  br label %76

76:                                               ; preds = %73, %8
  %77 = load i8*, i8** %1, align 8
  ret i8* %77
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
