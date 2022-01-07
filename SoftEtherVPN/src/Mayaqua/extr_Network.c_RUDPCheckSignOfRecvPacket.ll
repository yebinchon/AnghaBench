; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPCheckSignOfRecvPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPCheckSignOfRecvPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32* }

@SHA1_SIZE = common dso_local global i32 0, align 4
@RUDP_PROTOCOL_DNS = common dso_local global i64 0, align 8
@RUDP_PROTOCOL_ICMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RUDPCheckSignOfRecvPacket(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @SHA1_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @SHA1_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %25, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %138

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %13, align 8
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @SHA1_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %138

43:                                               ; preds = %35
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* @SHA1_SIZE, align 4
  %46 = call i32 @Copy(i32* %19, i32* %44, i32 %45)
  %47 = load i32*, i32** %13, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @SHA1_SIZE, align 4
  %52 = call i32 @Copy(i32* %47, i32* %50, i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @Sha1(i32* %22, i32* %53, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %43
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61, %43
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SHA1_SIZE, align 4
  %72 = call i32 @XorData(i32* %22, i32* %22, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %61
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* @SHA1_SIZE, align 4
  %76 = call i32 @Copy(i32* %74, i32* %19, i32 %75)
  %77 = load i32, i32* @SHA1_SIZE, align 4
  %78 = call i64 @Cmp(i32* %19, i32* %22, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %138

81:                                               ; preds = %73
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp eq %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %138

87:                                               ; preds = %81
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* @SHA1_SIZE, align 4
  %95 = call i32 @Copy(i32* %19, i32* %93, i32 %94)
  %96 = load i32*, i32** %13, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @SHA1_SIZE, align 4
  %103 = call i32 @Copy(i32* %96, i32* %101, i32 %102)
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @Sha1(i32* %22, i32* %104, i32 %105)
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* @SHA1_SIZE, align 4
  %109 = call i32 @Copy(i32* %107, i32* %19, i32 %108)
  %110 = load i32, i32* @SHA1_SIZE, align 4
  %111 = call i64 @Cmp(i32* %19, i32* %22, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %92
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %138

114:                                              ; preds = %92
  br label %115

115:                                              ; preds = %114, %87
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @SHA1_SIZE, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* @SHA1_SIZE, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @SHA1_SIZE, align 4
  %128 = sub nsw i32 %126, %127
  %129 = call i32 @HMacSha1(i32* %22, i32* %120, i32 %121, i32* %125, i32 %128)
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* @SHA1_SIZE, align 4
  %132 = call i64 @Cmp(i32* %130, i32* %22, i32 %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %115
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %138

137:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %138

138:                                              ; preds = %137, %134, %113, %86, %80, %42, %34
  %139 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @Sha1(i32*, i32*, i32) #2

declare dso_local i32 @XorData(i32*, i32*, i32, i32) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local i32 @HMacSha1(i32*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
