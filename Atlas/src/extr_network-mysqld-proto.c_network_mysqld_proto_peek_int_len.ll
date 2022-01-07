; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_peek_int_len.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_peek_int_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_peek_int_len(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32* %23, i32** %12, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %98

35:                                               ; preds = %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %98

49:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i1 [ false, %50 ], [ %56, %54 ]
  br i1 %58, label %59, label %73

59:                                               ; preds = %57
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 8
  store i32 %70, i32* %9, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %12, align 8
  br label %50

73:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 8
  store i32 %89, i32* %9, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %12, align 8
  br label %74

92:                                               ; preds = %74
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 %93, 32
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %92, %48, %34
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
