; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_mangle_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_mangle_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s-2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @_mdns_mangle_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_mdns_mangle_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strrchr(i8* %9, i8 signext 45)
  store i8* %10, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  br label %24

14:                                               ; preds = %1
  store i8* null, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = call i32 @strtol(i8* %16, i8** %6, i32 10)
  store i32 %17, i32* %5, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 2, i32* %5, align 4
  store i8* null, i8** %4, align 8
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 3
  %31 = call i8* @malloc(i64 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  store i8* null, i8** %2, align 8
  br label %68

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %66

40:                                               ; preds = %24
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add nsw i64 %42, 2
  %44 = call i8* @malloc(i64 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  store i8* null, i8** %2, align 8
  br label %68

49:                                               ; preds = %40
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strcpy(i8* %50, i8* %51)
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %49, %36
  %67 = load i8*, i8** %7, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %66, %47, %34
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
