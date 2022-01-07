; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SendTcp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SendTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i64, i8*, i64, i8*, i8*, i8*, i8* }

@SendTcp.tcp_mss_option = internal global [8 x i32] [i32 2, i32 4, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0], align 16
@TCP_HEADER_SIZE = common dso_local global i32 0, align 4
@IP_PROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendTcp(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i8* %10, i64 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_9__*, align 8
  %26 = alloca %struct.TYPE_8__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8**, align 8
  store i32* %0, i32** %13, align 8
  store i64 %1, i64* %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store i8* %10, i8** %23, align 8
  store i64 %11, i64* %24, align 8
  %30 = load i32, i32* @TCP_HEADER_SIZE, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %27, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %12
  %35 = load i64, i64* %24, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** %23, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %12
  br label %159

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @TCP_HEADER_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 40, %43
  %45 = load i64, i64* %24, align 8
  %46 = add i64 %44, %45
  %47 = add i64 %46, 32
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_9__* @Malloc(i32 %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %25, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %51 = bitcast %struct.TYPE_9__* %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 40
  %53 = bitcast i32* %52 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %26, align 8
  %54 = load i64, i64* %22, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  store i8** bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @SendTcp.tcp_mss_option, i64 0, i64 2) to i8**), i8*** %29, align 8
  %57 = load i64, i64* %22, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i8* @Endian16(i8* %58)
  %60 = load i8**, i8*** %29, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i64, i64* %27, align 8
  %62 = add i64 %61, 32
  store i64 %62, i64* %27, align 8
  br label %63

63:                                               ; preds = %56, %41
  %64 = load i64, i64* %27, align 8
  %65 = load i64, i64* %24, align 8
  %66 = add nsw i64 %64, %65
  store i64 %66, i64* %28, align 8
  %67 = load i64, i64* %28, align 8
  %68 = icmp sgt i64 %67, 65536
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %71 = call i32 @Free(%struct.TYPE_9__* %70)
  br label %159

72:                                               ; preds = %63
  %73 = load i64, i64* %14, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @IP_PROTO_TCP, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %28, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i8* @Endian16(i8* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* %15, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i8* @Endian16(i8* %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* %17, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i8* @Endian16(i8* %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* %18, align 8
  %100 = call i8* @Endian32(i64 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load i64, i64* %19, align 8
  %104 = call i8* @Endian32(i64 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %110 = load i64, i64* %27, align 8
  %111 = sdiv i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i32 @TCP_SET_HEADER_SIZE(%struct.TYPE_8__* %109, i32 %112)
  %114 = load i64, i64* %20, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i64, i64* %21, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = call i8* @Endian16(i8* %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load i64, i64* %22, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %72
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %131 = bitcast %struct.TYPE_8__* %130 to i32*
  %132 = load i32, i32* @TCP_HEADER_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @Copy(i32* %134, i8* bitcast ([8 x i32]* @SendTcp.tcp_mss_option to i8*), i64 32)
  br label %136

136:                                              ; preds = %129, %72
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %138 = bitcast %struct.TYPE_8__* %137 to i32*
  %139 = load i64, i64* %27, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i8*, i8** %23, align 8
  %142 = load i64, i64* %24, align 8
  %143 = call i32 @Copy(i32* %140, i8* %141, i64 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %145 = load i64, i64* %28, align 8
  %146 = add nsw i64 %145, 12
  %147 = call i64 @IpChecksum(%struct.TYPE_9__* %144, i64 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i32, i32* @IP_PROTO_TCP, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %155 = load i64, i64* %28, align 8
  %156 = call i32 @SendIp(i32* %150, i64 %151, i64 %152, i32 %153, %struct.TYPE_8__* %154, i64 %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %158 = call i32 @Free(%struct.TYPE_9__* %157)
  br label %159

159:                                              ; preds = %136, %69, %40
  ret void
}

declare dso_local %struct.TYPE_9__* @Malloc(i32) #1

declare dso_local i8* @Endian16(i8*) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i8* @Endian32(i64) #1

declare dso_local i32 @TCP_SET_HEADER_SIZE(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @Copy(i32*, i8*, i64) #1

declare dso_local i64 @IpChecksum(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @SendIp(i32*, i64, i64, i32, %struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
