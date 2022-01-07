; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildClasslessRouteTableStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildClasslessRouteTableStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@MAX_DHCP_CLASSLESS_ROUTE_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BuildClasslessRouteTableStr(i8* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @ClearStr(i8* %11, i64 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  br label %63

20:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @MAX_DHCP_CLASSLESS_ROUTE_ENTRIES, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %25
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %37 = call i32 @Zero(i8* %36, i32 128)
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = call i32 @BuildClasslessRouteStr(i8* %38, i32 128, %struct.TYPE_6__* %39)
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %42 = call i32 @IsEmptyStr(i8* %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %35
  %45 = load i64, i64* %8, align 8
  %46 = icmp uge i64 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @StrCat(i8* %48, i64 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %55 = call i32 @StrCat(i8* %52, i64 %53, i8* %54)
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %51, %35
  br label %59

59:                                               ; preds = %58, %25
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %21

63:                                               ; preds = %19, %21
  ret void
}

declare dso_local i32 @ClearStr(i8*, i64) #1

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @BuildClasslessRouteStr(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StrCat(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
