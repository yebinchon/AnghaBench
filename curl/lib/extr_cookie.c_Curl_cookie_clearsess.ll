; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_cookie_clearsess.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_cookie_clearsess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CookieInfo = type { %struct.Cookie**, i32 }
%struct.Cookie = type { %struct.Cookie*, i32 }

@COOKIE_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_cookie_clearsess(%struct.CookieInfo* %0) #0 {
  %2 = alloca %struct.CookieInfo*, align 8
  %3 = alloca %struct.Cookie*, align 8
  %4 = alloca %struct.Cookie*, align 8
  %5 = alloca %struct.Cookie*, align 8
  %6 = alloca %struct.Cookie*, align 8
  %7 = alloca i32, align 4
  store %struct.CookieInfo* %0, %struct.CookieInfo** %2, align 8
  store %struct.Cookie* null, %struct.Cookie** %6, align 8
  %8 = load %struct.CookieInfo*, %struct.CookieInfo** %2, align 8
  %9 = icmp ne %struct.CookieInfo* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %81, %11
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @COOKIE_HASH_SIZE, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load %struct.CookieInfo*, %struct.CookieInfo** %2, align 8
  %18 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %17, i32 0, i32 0
  %19 = load %struct.Cookie**, %struct.Cookie*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %19, i64 %21
  %23 = load %struct.Cookie*, %struct.Cookie** %22, align 8
  %24 = icmp ne %struct.Cookie* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %81

26:                                               ; preds = %16
  %27 = load %struct.CookieInfo*, %struct.CookieInfo** %2, align 8
  %28 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %27, i32 0, i32 0
  %29 = load %struct.Cookie**, %struct.Cookie*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %29, i64 %31
  %33 = load %struct.Cookie*, %struct.Cookie** %32, align 8
  store %struct.Cookie* %33, %struct.Cookie** %6, align 8
  store %struct.Cookie* %33, %struct.Cookie** %4, align 8
  store %struct.Cookie* %33, %struct.Cookie** %3, align 8
  br label %34

34:                                               ; preds = %71, %26
  %35 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %36 = icmp ne %struct.Cookie* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %39 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %38, i32 0, i32 0
  %40 = load %struct.Cookie*, %struct.Cookie** %39, align 8
  store %struct.Cookie* %40, %struct.Cookie** %5, align 8
  %41 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %42 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %37
  %46 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %47 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %48 = icmp eq %struct.Cookie* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load %struct.Cookie*, %struct.Cookie** %5, align 8
  store %struct.Cookie* %50, %struct.Cookie** %3, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %53 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %54 = icmp eq %struct.Cookie* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load %struct.Cookie*, %struct.Cookie** %5, align 8
  store %struct.Cookie* %56, %struct.Cookie** %6, align 8
  br label %61

57:                                               ; preds = %51
  %58 = load %struct.Cookie*, %struct.Cookie** %5, align 8
  %59 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %60 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %59, i32 0, i32 0
  store %struct.Cookie* %58, %struct.Cookie** %60, align 8
  br label %61

61:                                               ; preds = %57, %55
  %62 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %63 = call i32 @freecookie(%struct.Cookie* %62)
  %64 = load %struct.CookieInfo*, %struct.CookieInfo** %2, align 8
  %65 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  br label %70

68:                                               ; preds = %37
  %69 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  store %struct.Cookie* %69, %struct.Cookie** %6, align 8
  br label %70

70:                                               ; preds = %68, %61
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.Cookie*, %struct.Cookie** %5, align 8
  store %struct.Cookie* %72, %struct.Cookie** %4, align 8
  br label %34

73:                                               ; preds = %34
  %74 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %75 = load %struct.CookieInfo*, %struct.CookieInfo** %2, align 8
  %76 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %75, i32 0, i32 0
  %77 = load %struct.Cookie**, %struct.Cookie*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %77, i64 %79
  store %struct.Cookie* %74, %struct.Cookie** %80, align 8
  br label %81

81:                                               ; preds = %73, %25
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %12

84:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @freecookie(%struct.Cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
