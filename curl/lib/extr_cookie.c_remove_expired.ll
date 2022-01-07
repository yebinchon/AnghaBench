; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_remove_expired.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_remove_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CookieInfo = type { i32, %struct.Cookie** }
%struct.Cookie = type { i64, %struct.Cookie* }

@COOKIE_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CookieInfo*)* @remove_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_expired(%struct.CookieInfo* %0) #0 {
  %2 = alloca %struct.CookieInfo*, align 8
  %3 = alloca %struct.Cookie*, align 8
  %4 = alloca %struct.Cookie*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Cookie*, align 8
  store %struct.CookieInfo* %0, %struct.CookieInfo** %2, align 8
  %8 = call i32 @time(i32* null)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %70, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @COOKIE_HASH_SIZE, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %10
  store %struct.Cookie* null, %struct.Cookie** %7, align 8
  %15 = load %struct.CookieInfo*, %struct.CookieInfo** %2, align 8
  %16 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %15, i32 0, i32 1
  %17 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %17, i64 %19
  %21 = load %struct.Cookie*, %struct.Cookie** %20, align 8
  store %struct.Cookie* %21, %struct.Cookie** %3, align 8
  br label %22

22:                                               ; preds = %67, %14
  %23 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %24 = icmp ne %struct.Cookie* %23, null
  br i1 %24, label %25, label %69

25:                                               ; preds = %22
  %26 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %27 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %26, i32 0, i32 1
  %28 = load %struct.Cookie*, %struct.Cookie** %27, align 8
  store %struct.Cookie* %28, %struct.Cookie** %4, align 8
  %29 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %30 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %25
  %34 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %35 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %41 = icmp ne %struct.Cookie* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %44 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %43, i32 0, i32 1
  %45 = load %struct.Cookie*, %struct.Cookie** %44, align 8
  %46 = load %struct.CookieInfo*, %struct.CookieInfo** %2, align 8
  %47 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %46, i32 0, i32 1
  %48 = load %struct.Cookie**, %struct.Cookie*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %48, i64 %50
  store %struct.Cookie* %45, %struct.Cookie** %51, align 8
  br label %58

52:                                               ; preds = %39
  %53 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %54 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %53, i32 0, i32 1
  %55 = load %struct.Cookie*, %struct.Cookie** %54, align 8
  %56 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %57 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %56, i32 0, i32 1
  store %struct.Cookie* %55, %struct.Cookie** %57, align 8
  br label %58

58:                                               ; preds = %52, %42
  %59 = load %struct.CookieInfo*, %struct.CookieInfo** %2, align 8
  %60 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %64 = call i32 @freecookie(%struct.Cookie* %63)
  br label %67

65:                                               ; preds = %33, %25
  %66 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  store %struct.Cookie* %66, %struct.Cookie** %7, align 8
  br label %67

67:                                               ; preds = %65, %58
  %68 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  store %struct.Cookie* %68, %struct.Cookie** %3, align 8
  br label %22

69:                                               ; preds = %22
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %10

73:                                               ; preds = %10
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @freecookie(%struct.Cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
