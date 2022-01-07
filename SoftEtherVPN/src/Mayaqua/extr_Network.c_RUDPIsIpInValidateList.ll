; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPIsIpInValidateList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPIsIpInValidateList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [62 x i8] c"RUDP: NAT-T: Validate IP: %r, ret=%u (current list len = %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RUDPIsIpInValidateList(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = call i64 (...) @Tick64()
  store i64 %13, i64* %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %124

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @IsIPPrivate(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %124

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @IsIPAddressInSameLocalNetwork(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %124

30:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @LIST_NUM(i32* %35)
  %37 = icmp slt i64 %32, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @LIST_DATA(i32* %41, i64 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %10, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32* @NewListFast(i32* null)
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = call i32 @Add(i32* %56, %struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %55, %38
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %31

63:                                               ; preds = %31
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i64, i64* %6, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i64 @LIST_NUM(i32* %69)
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @LIST_DATA(i32* %73, i64 %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %11, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %81 = call i32 @Delete(i32* %79, %struct.TYPE_8__* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = call i32 @Free(%struct.TYPE_8__* %82)
  br label %84

84:                                               ; preds = %72
  %85 = load i64, i64* %6, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %6, align 8
  br label %67

87:                                               ; preds = %67
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @ReleaseList(i32* %88)
  br label %90

90:                                               ; preds = %87, %63
  store i64 0, i64* %6, align 8
  br label %91

91:                                               ; preds = %112, %90
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @LIST_NUM(i32* %95)
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %91
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @LIST_DATA(i32* %101, i64 %102)
  %104 = inttoptr i64 %103 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %12, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32*, i32** %5, align 8
  %108 = call i64 @CmpIpAddr(i32* %106, i32* %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  store i32 1, i32* %9, align 4
  br label %115

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %91

115:                                              ; preds = %110, %91
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i64 @LIST_NUM(i32* %120)
  %122 = call i32 @Debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32* %116, i32 %117, i64 %121)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %115, %29, %24, %19
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i64 @IsIPPrivate(i32*) #1

declare dso_local i64 @IsIPAddressInSameLocalNetwork(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i64 @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @Free(%struct.TYPE_8__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i32 @Debug(i8*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
