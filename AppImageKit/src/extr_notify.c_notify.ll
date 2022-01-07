; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_notify.c_notify.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_notify.c_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"libnotify.so.3\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"libnotify.so.4\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"libnotify.so.5\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"libnotify.so.6\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"libnotify.so.7\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"libnotify.so.8\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to open libnotify.\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"notify_init\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"AppImage\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"notify_notification_new\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"notify_notification_set_timeout\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"notify_notification_show\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @notify(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i8* (i8*, i8*, i8*, i8*)*, align 8
  %12 = alloca void (i8*, i32)*, align 8
  %13 = alloca void (i8*, i8*)*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @stdin, align 4
  %15 = call i32 @fileno(i32 %14)
  %16 = call i64 @isatty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %117

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i8* null, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @RTLD_LAZY, align 4
  %32 = call i8* @dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @RTLD_LAZY, align 4
  %38 = call i8* @dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @RTLD_LAZY, align 4
  %44 = call i8* @dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @RTLD_LAZY, align 4
  %50 = call i8* @dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8*, i8** %8, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @RTLD_LAZY, align 4
  %56 = call i8* @dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @RTLD_LAZY, align 4
  %62 = call i8* @dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i8*, i8** %8, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i8*, i8** %8, align 8
  %70 = call i64 @dlsym(i8* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %71 = inttoptr i64 %70 to void (i8*)*
  store void (i8*)* %71, void (i8*)** %10, align 8
  %72 = load void (i8*)*, void (i8*)** %10, align 8
  %73 = icmp eq void (i8*)* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @dlclose(i8* %75)
  store i32 1, i32* %4, align 4
  br label %118

77:                                               ; preds = %68
  %78 = load void (i8*)*, void (i8*)** %10, align 8
  call void %78(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %79 = load i8*, i8** %8, align 8
  %80 = call i64 @dlsym(i8* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %81 = inttoptr i64 %80 to i8* (i8*, i8*, i8*, i8*)*
  store i8* (i8*, i8*, i8*, i8*)* %81, i8* (i8*, i8*, i8*, i8*)** %11, align 8
  %82 = load i8* (i8*, i8*, i8*, i8*)*, i8* (i8*, i8*, i8*, i8*)** %11, align 8
  %83 = icmp eq i8* (i8*, i8*, i8*, i8*)* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @dlclose(i8* %85)
  store i32 1, i32* %4, align 4
  br label %118

87:                                               ; preds = %77
  %88 = load i8* (i8*, i8*, i8*, i8*)*, i8* (i8*, i8*, i8*, i8*)** %11, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i8* %88(i8* %89, i8* %90, i8* null, i8* null)
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i64 @dlsym(i8* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %94 = inttoptr i64 %93 to void (i8*, i32)*
  store void (i8*, i32)* %94, void (i8*, i32)** %12, align 8
  %95 = load void (i8*, i32)*, void (i8*, i32)** %12, align 8
  %96 = icmp eq void (i8*, i32)* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @dlclose(i8* %98)
  store i32 1, i32* %4, align 4
  br label %118

100:                                              ; preds = %87
  %101 = load void (i8*, i32)*, void (i8*, i32)** %12, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %7, align 4
  call void %101(i8* %102, i32 %103)
  %104 = load i8*, i8** %8, align 8
  %105 = call i64 @dlsym(i8* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %106 = inttoptr i64 %105 to void (i8*, i8*)*
  store void (i8*, i8*)* %106, void (i8*, i8*)** %13, align 8
  %107 = load void (i8*)*, void (i8*)** %10, align 8
  %108 = icmp eq void (i8*)* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @dlclose(i8* %110)
  store i32 1, i32* %4, align 4
  br label %118

112:                                              ; preds = %100
  %113 = load void (i8*, i8*)*, void (i8*, i8*)** %13, align 8
  %114 = load i8*, i8** %9, align 8
  call void %113(i8* %114, i8* null)
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @dlclose(i8* %115)
  br label %117

117:                                              ; preds = %112, %18
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %109, %97, %84, %74
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i64 @dlsym(i8*, i8*) #1

declare dso_local i32 @dlclose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
