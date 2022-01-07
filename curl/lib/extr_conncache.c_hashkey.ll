; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_hashkey.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_hashkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%ld%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i8*, i64, i8**)* @hashkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashkey(%struct.connectdata* %0, i8* %1, i64 %2, i8** %3) #0 {
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %4
  %20 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %21 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %32 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  br label %51

34:                                               ; preds = %19, %4
  %35 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %36 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %42 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %47 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i8**, i8*** %8, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %9, align 8
  %56 = load i8**, i8*** %8, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @msnprintf(i8* %58, i64 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %60, i8* %61)
  ret void
}

declare dso_local i32 @msnprintf(i8*, i64, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
