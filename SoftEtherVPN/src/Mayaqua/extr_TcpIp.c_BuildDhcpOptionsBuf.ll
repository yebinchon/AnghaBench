; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildDhcpOptionsBuf.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildDhcpOptionsBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i64 }

@DHCP_ID_PRIVATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BuildDhcpOptionsBuf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %96

14:                                               ; preds = %1
  %15 = call i32* (...) @NewBuf()
  store i32* %15, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %89, %14
  %17 = load i64, i64* %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @LIST_NUM(i32* %18)
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.TYPE_3__* @LIST_DATA(i32* %22, i64 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %8, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 255
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  br label %40

39:                                               ; preds = %21
  store i64 255, i64* %7, align 8
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @WriteBuf(i32* %41, i64* %6, i32 1)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @WriteBuf(i32* %43, i64* %7, i32 1)
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @WriteBuf(i32* %45, i64* %48, i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %68, %40
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = load i64, i64* @DHCP_ID_PRIVATE, align 8
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp sle i64 %63, 255
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %7, align 8
  br label %68

67:                                               ; preds = %61
  store i64 255, i64* %7, align 8
  br label %68

68:                                               ; preds = %67, %65
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @WriteBuf(i32* %69, i64* %6, i32 1)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @WriteBuf(i32* %71, i64* %7, i32 1)
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %7, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @WriteBuf(i32* %73, i64* %78, i32 %80)
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub nsw i64 %83, %82
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %10, align 8
  br label %58

88:                                               ; preds = %58
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %5, align 8
  br label %16

92:                                               ; preds = %16
  store i64 255, i64* %6, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @WriteBuf(i32* %93, i64* %6, i32 1)
  %95 = load i32*, i32** %4, align 8
  store i32* %95, i32** %2, align 8
  br label %96

96:                                               ; preds = %92, %13
  %97 = load i32*, i32** %2, align 8
  ret i32* %97
}

declare dso_local i32* @NewBuf(...) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_3__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @WriteBuf(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
