; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParsePayloadListEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParsePayloadListEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@IKE_PAYLOAD_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"ISAKMP: Broken Packet (Invalid Payload Size)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ISAKMP: Broken Packet (Invalid Payload Data)\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ISAKMP: Broken Packet (Payload Data Parse Failed)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ISAKMP: Ignored Payload Type: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IkeParsePayloadListEx(i8* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %118

22:                                               ; preds = %4
  %23 = call i32* @NewListFast(i32* null)
  store i32* %23, i32** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32* @MemToBuf(i8* %24, i32 %25)
  store i32* %26, i32** %11, align 8
  br label %27

27:                                               ; preds = %103, %22
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @IKE_PAYLOAD_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %108

31:                                               ; preds = %27
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @ReadBuf(i32* %32, %struct.TYPE_3__* %14, i32 16)
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 16
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %95, %79, %64, %52, %36
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @IkeFreePayloadList(i32* %39)
  store i32* null, i32** %10, align 8
  br label %108

41:                                               ; preds = %31
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 16
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Endian16(i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 16
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %38

54:                                               ; preds = %41
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 16
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32* @ReadBufFromBuf(i32* %59, i32 %60)
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %38

66:                                               ; preds = %54
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @IKE_IS_SUPPORTED_PAYLOAD_TYPE(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load i64, i64* %12, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = call i32* @IkeParsePayload(i64 %74, i32* %75)
  store i32* %76, i32** %17, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @FreeBuf(i32* %80)
  %82 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %38

83:                                               ; preds = %73
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = call i32 @Add(i32* %84, i32* %85)
  br label %103

87:                                               ; preds = %66
  %88 = load i64, i64* %12, align 8
  %89 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  %90 = load i64, i64* %12, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = call i32* @IkeParsePayload(i64 %90, i32* %91)
  store i32* %92, i32** %17, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @FreeBuf(i32* %96)
  %98 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %38

99:                                               ; preds = %87
  %100 = load i32*, i32** %10, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @Add(i32* %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %83
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %12, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @FreeBuf(i32* %106)
  br label %27

108:                                              ; preds = %38, %27
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @FreeBuf(i32* %109)
  %111 = load i32*, i32** %9, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32*, i32** %10, align 8
  store i32* %117, i32** %5, align 8
  br label %118

118:                                              ; preds = %116, %21
  %119 = load i32*, i32** %5, align 8
  ret i32* %119
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32* @MemToBuf(i8*, i32) #1

declare dso_local i32 @ReadBuf(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @IkeFreePayloadList(i32*) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32* @ReadBufFromBuf(i32*, i32) #1

declare dso_local i64 @IKE_IS_SUPPORTED_PAYLOAD_TYPE(i64) #1

declare dso_local i32* @IkeParsePayload(i64, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @Add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
