; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_ssautil.c_get_field.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_ssautil.c_get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @get_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_field(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %9, %1
  store i8* null, i8** %2, align 8
  br label %54

20:                                               ; preds = %13
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %28, %20
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isspace(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %23

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 44)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i8* @hb_strndup(i8* %37, i32 %43)
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8**, i8*** %3, align 8
  store i8* %46, i8** %47, align 8
  br label %52

48:                                               ; preds = %31
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** %4, align 8
  %51 = load i8**, i8*** %3, align 8
  store i8* null, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %36
  %53 = load i8*, i8** %4, align 8
  store i8* %53, i8** %2, align 8
  br label %54

54:                                               ; preds = %52, %19
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @hb_strndup(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
