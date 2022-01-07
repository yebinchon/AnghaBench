; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsNewControlPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsNewControlPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i64, i64, i32, i8*, i8*, i8*, i8* }

@OPENVPN_MAX_NUMACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @OvsNewControlPacket(i8* %0, i8* %1, i8* %2, i64 %3, i64* %4, i8* %5, i64 %6, i64 %7, i8** %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8**, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64* %4, i64** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i8** %8, i8*** %18, align 8
  %21 = call %struct.TYPE_4__* @ZeroMalloc(i32 72)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %19, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 8
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i64 0, i64* %20, align 8
  br label %34

34:                                               ; preds = %50, %9
  %35 = load i64, i64* %20, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* @OPENVPN_MAX_NUMACK, align 4
  %38 = call i64 @MIN(i64 %36, i32 %37)
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i64*, i64** %14, align 8
  %42 = load i64, i64* %20, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %20, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %44, i64* %49, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load i64, i64* %20, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %20, align 8
  br label %34

53:                                               ; preds = %34
  %54 = load i8*, i8** %15, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %17, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load i8**, i8*** %18, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i8**, i8*** %18, align 8
  %67 = load i64, i64* %17, align 8
  %68 = call i32 @Clone(i8** %66, i64 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %65, %62, %53
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  ret %struct.TYPE_4__* %75
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @Clone(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
