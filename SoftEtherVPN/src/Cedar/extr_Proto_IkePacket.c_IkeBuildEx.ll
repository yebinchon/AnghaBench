; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeBuildEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeBuildEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__*, i32*, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i8*, i8*, i32, i32, i32, i8*, i8* }

@IKE_VERSION = common dso_local global i32 0, align 4
@IKE_HEADER_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@IKE_HEADER_FLAG_COMMIT = common dso_local global i32 0, align 4
@IKE_HEADER_FLAG_AUTH_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ISAKMP: Packet Encrypt Failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @IkeBuildEx(%struct.TYPE_17__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = icmp eq %struct.TYPE_17__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %154

15:                                               ; preds = %3
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %154

21:                                               ; preds = %15
  %22 = call i32 @Zero(%struct.TYPE_18__* %8, i32 56)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @Endian64(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 7
  store i8* %26, i8** %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @Endian64(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 6
  store i8* %31, i8** %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @IkeGetFirstPayloadType(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 5
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @IKE_VERSION, align 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %21
  %49 = load i32, i32* @IKE_HEADER_FLAG_ENCRYPTED, align 4
  br label %51

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @IKE_HEADER_FLAG_COMMIT, align 4
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = or i32 %52, %61
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @IKE_HEADER_FLAG_AUTH_ONLY, align 4
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = or i32 %62, %71
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i8* @Endian32(i64 %76)
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = icmp ne %struct.TYPE_19__* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %70
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = call i8* @CloneBuf(%struct.TYPE_19__* %89)
  %91 = bitcast i8* %90 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %9, align 8
  br label %97

92:                                               ; preds = %83, %70
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call %struct.TYPE_19__* @IkeBuildPayloadList(i32* %95)
  store %struct.TYPE_19__* %96, %struct.TYPE_19__** %9, align 8
  br label %97

97:                                               ; preds = %92, %86
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = icmp ne %struct.TYPE_19__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = call i32 @FreeBuf(%struct.TYPE_19__* %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %109 = call i8* @CloneBuf(%struct.TYPE_19__* %108)
  %110 = bitcast i8* %109 to %struct.TYPE_19__*
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %112, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %107
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call %struct.TYPE_19__* @IkeEncryptWithPadding(i32 %120, i64 %123, i32* %124)
  store %struct.TYPE_19__* %125, %struct.TYPE_19__** %11, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %127 = icmp eq %struct.TYPE_19__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = call i32 @Debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %131 = call i32 @FreeBuf(%struct.TYPE_19__* %130)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %154

132:                                              ; preds = %117
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %134 = call i32 @FreeBuf(%struct.TYPE_19__* %133)
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %135, %struct.TYPE_19__** %9, align 8
  br label %136

136:                                              ; preds = %132, %107
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 56
  %141 = call i8* @Endian32(i64 %140)
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i8* %141, i8** %142, align 8
  %143 = call %struct.TYPE_19__* (...) @NewBuf()
  store %struct.TYPE_19__* %143, %struct.TYPE_19__** %10, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %145 = call i32 @WriteBuf(%struct.TYPE_19__* %144, %struct.TYPE_18__* %8, i32 56)
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %148 = call i32 @WriteBufBuf(%struct.TYPE_19__* %146, %struct.TYPE_19__* %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %150 = call i32 @FreeBuf(%struct.TYPE_19__* %149)
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %152 = call i32 @SeekBuf(%struct.TYPE_19__* %151, i32 0, i32 0)
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %153, %struct.TYPE_19__** %4, align 8
  br label %154

154:                                              ; preds = %136, %128, %20, %14
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %155
}

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @Endian64(i32) #1

declare dso_local i32 @IkeGetFirstPayloadType(i32*) #1

declare dso_local i8* @Endian32(i64) #1

declare dso_local i8* @CloneBuf(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @IkeBuildPayloadList(i32*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @IkeEncryptWithPadding(i32, i64, i32*) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local %struct.TYPE_19__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @WriteBufBuf(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
