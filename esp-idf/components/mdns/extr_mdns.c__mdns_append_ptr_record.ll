; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_ptr_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_ptr_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@MDNS_ANSWER_PTR = common dso_local global i32 0, align 4
@MDNS_ANSWER_PTR_TTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i8*, i8*, i8*, i32, i32)* @_mdns_append_ptr_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mdns_append_ptr_record(i64* %0, i64* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i8*], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 0, i64* %17, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i64 0, i64* %8, align 8
  br label %81

23:                                               ; preds = %7
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  store i8* %24, i8** %25, align 16
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 1
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 2
  store i8* %28, i8** %29, align 16
  %30 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 3
  store i8* %30, i8** %31, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = call i64 @_mdns_append_fqdn(i64* %32, i64* %33, i8** %35, i32 3)
  store i64 %36, i64* %18, align 8
  %37 = load i64, i64* %18, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %81

40:                                               ; preds = %23
  %41 = load i64, i64* %18, align 8
  %42 = load i64, i64* %17, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %17, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = load i32, i32* @MDNS_ANSWER_PTR, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @MDNS_ANSWER_PTR_TTL, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ 0, %49 ], [ %51, %50 ]
  %54 = call i64 @_mdns_append_type(i64* %44, i64* %45, i32 %46, i32 0, i32 %53)
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* %18, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i64 0, i64* %8, align 8
  br label %81

58:                                               ; preds = %52
  %59 = load i64, i64* %18, align 8
  %60 = load i64, i64* %17, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %17, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 2
  store i64 %64, i64* %19, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  %68 = call i64 @_mdns_append_fqdn(i64* %65, i64* %66, i8** %67, i32 4)
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %18, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %58
  store i64 0, i64* %8, align 8
  br label %81

72:                                               ; preds = %58
  %73 = load i64*, i64** %9, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i32 @_mdns_set_u16(i64* %73, i64 %74, i64 %75)
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %17, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %72, %71, %57, %39, %22
  %82 = load i64, i64* %8, align 8
  ret i64 %82
}

declare dso_local i64 @_mdns_append_fqdn(i64*, i64*, i8**, i32) #1

declare dso_local i64 @_mdns_append_type(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @_mdns_set_u16(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
