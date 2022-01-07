; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_GetIpHeaderSize.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_GetIpHeaderSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetIpHeaderSize(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %72

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %47

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %72

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @IPV4_GET_HEADER_LEN(i32* %33)
  %35 = mul nsw i32 %34, 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %72

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %72

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %72

47:                                               ; preds = %18
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ParsePacketIPv6Header(%struct.TYPE_3__* %11, i32* %51, i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %72

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %72

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %72

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %67, %61, %55, %45, %44, %39, %30, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @IPV4_GET_HEADER_LEN(i32*) #1

declare dso_local i32 @ParsePacketIPv6Header(%struct.TYPE_3__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
