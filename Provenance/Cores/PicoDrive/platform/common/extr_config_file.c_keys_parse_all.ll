; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_keys_parse_all.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_keys_parse_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"binddev\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"input: can't handle dev: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bind \00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"config: unhandled action \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @keys_parse_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keys_parse_all(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 -1, i32* %6, align 4
  br label %10

10:                                               ; preds = %57, %48, %38, %35, %25, %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @feof(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %67

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %18 = call i32 @config_get_var_val(i32* %16, i8* %17, i32 256, i8** %4, i8** %5)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %67

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %10

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @in_config_parse_dev(i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %10

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @in_unbind_all(i32 %39, i32 -1, i32 -1)
  br label %10

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @strncasecmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %41
  br label %10

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @parse_bind_val(i8* %50, i32* %8)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @lprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %67

57:                                               ; preds = %49
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 5
  %60 = call i32 @mystrip(i8* %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 5
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @in_config_bind_key(i32 %61, i8* %63, i32 %64, i32 %65)
  br label %10

67:                                               ; preds = %54, %21, %10
  ret void
}

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @config_get_var_val(i32*, i8*, i32, i8**, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @in_config_parse_dev(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @in_unbind_all(i32, i32, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_bind_val(i8*, i32*) #1

declare dso_local i32 @lprintf(i8*, i8*) #1

declare dso_local i32 @mystrip(i8*) #1

declare dso_local i32 @in_config_bind_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
