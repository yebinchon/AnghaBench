; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_textdomain.c_libintl_textdomain.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_textdomain.c_libintl_textdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_nl_current_default_domain = common dso_local global i8* null, align 8
@_nl_state_lock = common dso_local global i32 0, align 4
@_nl_default_default_domain = common dso_local global i8* null, align 8
@_nl_msg_cat_cntr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @TEXTDOMAIN(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** @_nl_current_default_domain, align 8
  store i8* %10, i8** %2, align 8
  br label %78

11:                                               ; preds = %1
  %12 = load i32, i32* @_nl_state_lock, align 4
  %13 = call i32 @gl_rwlock_wrlock(i32 %12)
  %14 = load i8*, i8** @_nl_current_default_domain, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %11
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** @_nl_default_default_domain, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %11
  %26 = load i8*, i8** @_nl_default_default_domain, align 8
  store i8* %26, i8** @_nl_current_default_domain, align 8
  %27 = load i8*, i8** @_nl_current_default_domain, align 8
  store i8* %27, i8** %4, align 8
  br label %57

28:                                               ; preds = %20
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcmp(i8* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %4, align 8
  br label %56

35:                                               ; preds = %28
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @malloc(i64 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @memcpy(i8* %46, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %35
  %51 = load i8*, i8** %4, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  store i8* %54, i8** @_nl_current_default_domain, align 8
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i32, i32* @_nl_msg_cat_cntr, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @_nl_msg_cat_cntr, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** @_nl_default_default_domain, align 8
  %69 = icmp ne i8* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70, %66, %60
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i32, i32* @_nl_state_lock, align 4
  %76 = call i32 @gl_rwlock_unlock(i32 %75)
  %77 = load i8*, i8** %4, align 8
  store i8* %77, i8** %2, align 8
  br label %78

78:                                               ; preds = %74, %9
  %79 = load i8*, i8** %2, align 8
  ret i8* %79
}

declare dso_local i32 @gl_rwlock_wrlock(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @gl_rwlock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
