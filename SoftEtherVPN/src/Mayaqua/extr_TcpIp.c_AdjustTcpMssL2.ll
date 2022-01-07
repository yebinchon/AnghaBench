; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_AdjustTcpMssL2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_AdjustTcpMssL2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAC_PROTO_TAGVLAN = common dso_local global i64 0, align 8
@MAC_PROTO_IPV4 = common dso_local global i64 0, align 8
@MAC_PROTO_IPV6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdjustTcpMssL2(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %4
  store i32 0, i32* %5, align 4
  br label %96

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @MAC_PROTO_TAGVLAN, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %96

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %10, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @Endian16(i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @MAC_PROTO_IPV4, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %31
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @MAC_PROTO_IPV6, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47, %31
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @AdjustTcpMssL3(i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %96

56:                                               ; preds = %47
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %96

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32* %66, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, 2
  store i32 %68, i32* %7, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @READ_USHORT(i32* %69)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @MAC_PROTO_IPV4, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %64
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @MAC_PROTO_IPV6, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74, %64
  %79 = load i32, i32* %8, align 4
  %80 = icmp sge i32 %79, 5
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 4
  store i32 %83, i32* %8, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32* %85, i32** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 2
  store i32 %87, i32* %7, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @AdjustTcpMssL3(i32* %88, i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %96

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %56
  br label %95

95:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %81, %63, %51, %30, %20
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @Endian16(i32) #1

declare dso_local i32 @AdjustTcpMssL3(i32*, i32, i32) #1

declare dso_local i64 @READ_USHORT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
