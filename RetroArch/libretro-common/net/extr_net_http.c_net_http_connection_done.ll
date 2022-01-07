; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_connection_done.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_connection_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_connection_t = type { i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_http_connection_done(%struct.http_connection_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.http_connection_t*, align 8
  %4 = alloca i8**, align 8
  store %struct.http_connection_t* %0, %struct.http_connection_t** %3, align 8
  store i8** null, i8*** %4, align 8
  %5 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %6 = icmp ne %struct.http_connection_t* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

8:                                                ; preds = %1
  %9 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %10 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %9, i32 0, i32 0
  store i8** %10, i8*** %4, align 8
  %11 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %12 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %81

18:                                               ; preds = %8
  %19 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %20 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8 0, i8* %21, align 1
  %22 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %23 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %28 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %34 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %33, i32 0, i32 2
  store i32 443, i32* %34, align 8
  br label %38

35:                                               ; preds = %26
  %36 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %37 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %36, i32 0, i32 2
  store i32 80, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %18
  %40 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %41 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 58
  br i1 %45, label %46, label %75

46:                                               ; preds = %39
  %47 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %48 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 @isdigit(i32 %52) #3
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %81

56:                                               ; preds = %46
  %57 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %58 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %62 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %61, i32 0, i32 1
  %63 = call i64 @strtoul(i8* %60, i8** %62, i32 10)
  %64 = trunc i64 %63 to i32
  %65 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %66 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %68 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 47
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %81

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74, %39
  %76 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %77 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8**, i8*** %4, align 8
  store i8* %79, i8** %80, align 8
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %73, %55, %17, %7
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
