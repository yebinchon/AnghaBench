; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPAddIpToValidateList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPAddIpToValidateList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32 }

@RUDP_MAX_VALIDATED_SOURCE_IP_ADDRESSES = common dso_local global i64 0, align 8
@RUDP_VALIDATED_SOURCE_IP_ADDRESS_EXPIRES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"RUDP: NAT-T: Src IP added: %r (current list len = %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RUDPAddIpToValidateList(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = call i64 (...) @Tick64()
  store i64 %12, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  br label %139

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @LIST_NUM(i32* %22)
  %24 = load i64, i64* @RUDP_MAX_VALIDATED_SOURCE_IP_ADDRESSES, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %139

27:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @LIST_NUM(i32* %32)
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @LIST_DATA(i32* %38, i64 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %9, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load i32*, i32** %8, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32* @NewListFast(i32* null)
  store i32* %51, i32** %8, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = call i32 @Add(i32* %53, %struct.TYPE_9__* %54)
  br label %56

56:                                               ; preds = %52, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %5, align 8
  br label %28

60:                                               ; preds = %28
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  store i64 0, i64* %5, align 8
  br label %64

64:                                               ; preds = %81, %63
  %65 = load i64, i64* %5, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @LIST_NUM(i32* %66)
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @LIST_DATA(i32* %70, i64 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %10, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = call i32 @Delete(i32* %76, %struct.TYPE_9__* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = call i32 @Free(%struct.TYPE_9__* %79)
  br label %81

81:                                               ; preds = %69
  %82 = load i64, i64* %5, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %5, align 8
  br label %64

84:                                               ; preds = %64
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @ReleaseList(i32* %85)
  br label %87

87:                                               ; preds = %84, %60
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %88

88:                                               ; preds = %110, %87
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @LIST_NUM(i32* %92)
  %94 = icmp slt i64 %89, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %88
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @LIST_DATA(i32* %98, i64 %99)
  %101 = inttoptr i64 %100 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %11, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32*, i32** %4, align 8
  %105 = call i64 @CmpIpAddr(i32* %103, i32* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %6, align 8
  br label %113

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %5, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %5, align 8
  br label %88

113:                                              ; preds = %107, %88
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = icmp eq %struct.TYPE_9__* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = call %struct.TYPE_9__* @ZeroMalloc(i32 16)
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %6, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @Copy(i32* %119, i32* %120, i32 4)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = call i32 @Add(i32* %124, %struct.TYPE_9__* %125)
  br label %127

127:                                              ; preds = %116, %113
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @RUDP_VALIDATED_SOURCE_IP_ADDRESS_EXPIRES, align 8
  %130 = add nsw i64 %128, %129
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @LIST_NUM(i32* %136)
  %138 = call i32 @Debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32* %133, i64 %137)
  br label %139

139:                                              ; preds = %127, %26, %18
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i64 @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Debug(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
