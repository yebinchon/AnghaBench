; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_VLanRemoveTag.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_VLanRemoveTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_PROTO_TAGVLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VLanRemoveTag(i8** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i8**, i8*** %6, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 14
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %19, %4
  store i32 0, i32* %5, align 4
  br label %102

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @MAC_PROTO_TAGVLAN, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @Endian16(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = bitcast i32* %12 to i64*
  store i64* %39, i64** %13, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to i64*
  store i64* %42, i64** %10, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 12
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %101

52:                                               ; preds = %36
  %53 = load i64*, i64** %10, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 13
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %52
  %61 = load i32, i32* %11, align 4
  %62 = icmp sge i32 %61, 18
  br i1 %62, label %63, label %100

63:                                               ; preds = %60
  %64 = load i64*, i64** %10, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 14
  %66 = call i32 @READ_USHORT(i64* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = and i32 %67, 4095
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71, %63
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 4
  store i32 %77, i32* %15, align 4
  store i32 12, i32* %16, align 4
  br label %78

78:                                               ; preds = %93, %75
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i64*, i64** %10, align 8
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %88, i64* %92, align 8
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %78

96:                                               ; preds = %78
  %97 = load i32, i32* %15, align 4
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  store i32 1, i32* %5, align 4
  br label %102

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100, %52, %36
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %96, %30
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @READ_USHORT(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
