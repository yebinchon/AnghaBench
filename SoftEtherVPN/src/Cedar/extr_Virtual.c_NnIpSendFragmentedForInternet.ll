; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnIpSendFragmentedForInternet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnIpSendFragmentedForInternet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, i64*, i8*, i8*, i32, i64 }

@IP_HEADER_SIZE = common dso_local global i32 0, align 4
@DEFAULT_IP_TOS = common dso_local global i32 0, align 4
@DEFAULT_IP_TTL = common dso_local global i64 0, align 8
@NN_MAX_QUEUE_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnIpSendFragmentedForInternet(%struct.TYPE_12__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i64 %9, i64* %20, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = load i8*, i8** %18, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %10
  br label %148

30:                                               ; preds = %26
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* @IP_HEADER_SIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i64* @Malloc(i32 %33)
  store i64* %34, i64** %21, align 8
  %35 = load i64*, i64** %21, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = bitcast i64* %36 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %22, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %41 = call i32 @IPV4_SET_VERSION(%struct.TYPE_13__* %40, i32 4)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %43 = load i32, i32* @IP_HEADER_SIZE, align 4
  %44 = sdiv i32 %43, 4
  %45 = call i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_13__* %42, i32 %44)
  %46 = load i32, i32* @DEFAULT_IP_TOS, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @IP_HEADER_SIZE, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i8* @Endian16(i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i8* @Endian16(i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 5
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 5
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sdiv i32 %68, 8
  %70 = call i32 @IPV4_SET_OFFSET(%struct.TYPE_13__* %67, i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %16, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %30
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %78 = call i32 @IPV4_SET_FLAGS(%struct.TYPE_13__* %77, i32 0)
  br label %82

79:                                               ; preds = %30
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %81 = call i32 @IPV4_SET_FLAGS(%struct.TYPE_13__* %80, i32 1)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i64, i64* %20, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i64, i64* @DEFAULT_IP_TTL, align 8
  br label %89

87:                                               ; preds = %82
  %88 = load i64, i64* %20, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %105 = load i32, i32* @IP_HEADER_SIZE, align 4
  %106 = call i64 @IpChecksum(%struct.TYPE_13__* %104, i32 %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load i64*, i64** %21, align 8
  %110 = load i32, i32* @IP_HEADER_SIZE, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i8*, i8** %18, align 8
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @Copy(i64* %112, i8* %113, i32 %114)
  %116 = load i64*, i64** %21, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @IP_HEADER_SIZE, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32* @NewBlock(i64* %116, i32 %119, i32 0)
  store i32* %120, i32** %23, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = call i32 @LockQueue(%struct.TYPE_14__* %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @NN_MAX_QUEUE_LENGTH, align 8
  %131 = icmp sle i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %89
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load i32*, i32** %23, align 8
  %137 = call i32 @InsertQueue(%struct.TYPE_14__* %135, i32* %136)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  br label %143

140:                                              ; preds = %89
  %141 = load i32*, i32** %23, align 8
  %142 = call i32 @FreeBlock(i32* %141)
  br label %143

143:                                              ; preds = %140, %132
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = call i32 @UnlockQueue(%struct.TYPE_14__* %146)
  br label %148

148:                                              ; preds = %143, %29
  ret void
}

declare dso_local i64* @Malloc(i32) #1

declare dso_local i32 @IPV4_SET_VERSION(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @IPV4_SET_HEADER_LEN(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @IPV4_SET_OFFSET(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @IPV4_SET_FLAGS(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @IpChecksum(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Copy(i64*, i8*, i32) #1

declare dso_local i32* @NewBlock(i64*, i32, i32) #1

declare dso_local i32 @LockQueue(%struct.TYPE_14__*) #1

declare dso_local i32 @InsertQueue(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @FreeBlock(i32*) #1

declare dso_local i32 @UnlockQueue(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
