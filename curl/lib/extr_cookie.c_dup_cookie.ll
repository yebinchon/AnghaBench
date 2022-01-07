; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_dup_cookie.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_dup_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Cookie = type { i32, i32, i32, i32, i32, i32 }

@expirestr = common dso_local global i32 0, align 4
@domain = common dso_local global i32 0, align 4
@path = common dso_local global i32 0, align 4
@spath = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4
@value = common dso_local global i32 0, align 4
@maxage = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Cookie* (%struct.Cookie*)* @dup_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Cookie* @dup_cookie(%struct.Cookie* %0) #0 {
  %2 = alloca %struct.Cookie*, align 8
  %3 = alloca %struct.Cookie*, align 8
  %4 = alloca %struct.Cookie*, align 8
  store %struct.Cookie* %0, %struct.Cookie** %3, align 8
  %5 = call %struct.Cookie* @calloc(i32 24, i32 1)
  store %struct.Cookie* %5, %struct.Cookie** %4, align 8
  %6 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %7 = icmp ne %struct.Cookie* %6, null
  br i1 %7, label %8, label %55

8:                                                ; preds = %1
  %9 = load i32, i32* @expirestr, align 4
  %10 = call i32 @CLONE(i32 %9)
  %11 = load i32, i32* @domain, align 4
  %12 = call i32 @CLONE(i32 %11)
  %13 = load i32, i32* @path, align 4
  %14 = call i32 @CLONE(i32 %13)
  %15 = load i32, i32* @spath, align 4
  %16 = call i32 @CLONE(i32 %15)
  %17 = load i32, i32* @name, align 4
  %18 = call i32 @CLONE(i32 %17)
  %19 = load i32, i32* @value, align 4
  %20 = call i32 @CLONE(i32 %19)
  %21 = load i32, i32* @maxage, align 4
  %22 = call i32 @CLONE(i32 %21)
  %23 = load i32, i32* @version, align 4
  %24 = call i32 @CLONE(i32 %23)
  %25 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %26 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %29 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %31 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %34 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %36 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %39 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %41 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %44 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %46 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %49 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.Cookie*, %struct.Cookie** %3, align 8
  %51 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %54 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %8, %1
  %56 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  store %struct.Cookie* %56, %struct.Cookie** %2, align 8
  br label %60

57:                                               ; No predecessors!
  %58 = load %struct.Cookie*, %struct.Cookie** %4, align 8
  %59 = call i32 @freecookie(%struct.Cookie* %58)
  store %struct.Cookie* null, %struct.Cookie** %2, align 8
  br label %60

60:                                               ; preds = %57, %55
  %61 = load %struct.Cookie*, %struct.Cookie** %2, align 8
  ret %struct.Cookie* %61
}

declare dso_local %struct.Cookie* @calloc(i32, i32) #1

declare dso_local i32 @CLONE(i32) #1

declare dso_local i32 @freecookie(%struct.Cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
