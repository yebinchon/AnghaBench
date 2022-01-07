; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Proxy.c_ProxySocks4Connect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Proxy.c_ProxySocks4Connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32 }

@PROXY_ERROR_PARAMETER = common dso_local global i32 0, align 4
@PROXY_ERROR_CANCELED = common dso_local global i32 0, align 4
@PROXY_ERROR_CONNECTION = common dso_local global i32 0, align 4
@PROXY_CONNECTION_TIMEOUT = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@PROXY_ERROR_DISCONNECTED = common dso_local global i32 0, align 4
@PROXY_ERROR_GENERIC = common dso_local global i32 0, align 4
@PROXY_ERROR_SUCCESS = common dso_local global i32 0, align 4
@PROXY_ERROR_AUTHENTICATION = common dso_local global i32 0, align 4
@PROXY_ERROR_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProxySocks4Connect(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = icmp eq %struct.TYPE_13__* %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = icmp eq %struct.TYPE_14__* %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IsEmptyStr(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IsEmptyStr(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %31, %26, %21, %18, %3
  %44 = load i32, i32* @PROXY_ERROR_PARAMETER, align 4
  store i32 %44, i32* %4, align 4
  br label %167

45:                                               ; preds = %37
  %46 = load i32*, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32* %8, i32** %7, align 8
  br label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load volatile i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @PROXY_ERROR_CANCELED, align 4
  store i32 %54, i32* %4, align 4
  br label %167

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %48
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = call i32 @Zero(%struct.TYPE_13__* %57, i32 16)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @GetIP(%struct.TYPE_15__* %12, i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @PROXY_ERROR_CONNECTION, align 4
  store i32 %65, i32* %4, align 4
  br label %167

66:                                               ; preds = %56
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = call i32* @Internal_ProxyTcpConnect(%struct.TYPE_14__* %67, i32* %68, i32* %70)
  store i32* %71, i32** %14, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @PROXY_ERROR_CONNECTION, align 4
  store i32 %75, i32* %4, align 4
  br label %167

76:                                               ; preds = %66
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* @PROXY_CONNECTION_TIMEOUT, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i64, i64* @INFINITE, align 8
  br label %89

85:                                               ; preds = %76
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  br label %89

89:                                               ; preds = %85, %83
  %90 = phi i64 [ %84, %83 ], [ %88, %85 ]
  %91 = call i64 @MIN(i32 %78, i64 %90)
  %92 = call i32 @SetTimeout(i32* %77, i64 %91)
  %93 = call %struct.TYPE_16__* (...) @NewBuf()
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** %15, align 8
  store i32 4, i32* %9, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %95 = call i32 @WriteBuf(%struct.TYPE_16__* %94, i32* %9, i32 4)
  store i32 1, i32* %9, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %97 = call i32 @WriteBuf(%struct.TYPE_16__* %96, i32* %9, i32 4)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @Endian16(i64 %100)
  store i32 %101, i32* %11, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %103 = call i32 @WriteBuf(%struct.TYPE_16__* %102, i32* %11, i32 4)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @WriteBuf(%struct.TYPE_16__* %104, i32* %106, i32 8)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @StrLen(i32* %114)
  %116 = add nsw i32 %115, 1
  %117 = call i32 @WriteBuf(%struct.TYPE_16__* %108, i32* %111, i32 %116)
  %118 = load i32*, i32** %14, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @SendAll(i32* %118, i32 %121, i32 %124, i32 0)
  store i32 %125, i32* %13, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %127 = call i32 @FreeBuf(%struct.TYPE_16__* %126)
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %89
  %131 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %131, i32* %13, align 4
  br label %161

132:                                              ; preds = %89
  %133 = load i32*, i32** %14, align 8
  %134 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %135 = call i32 @RecvAll(i32* %133, i32* %134, i32 32, i32 0)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %138, i32* %13, align 4
  br label %161

139:                                              ; preds = %132
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %141 = load i32, i32* %140, align 16
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @PROXY_ERROR_GENERIC, align 4
  store i32 %144, i32* %13, align 4
  br label %161

145:                                              ; preds = %139
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %158 [
    i32 90, label %148
    i32 93, label %156
  ]

148:                                              ; preds = %145
  %149 = load i32*, i32** %14, align 8
  %150 = load i64, i64* @INFINITE, align 8
  %151 = call i32 @SetTimeout(i32* %149, i64 %150)
  %152 = load i32*, i32** %14, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  store i32* %152, i32** %154, align 8
  %155 = load i32, i32* @PROXY_ERROR_SUCCESS, align 4
  store i32 %155, i32* %4, align 4
  br label %167

156:                                              ; preds = %145
  %157 = load i32, i32* @PROXY_ERROR_AUTHENTICATION, align 4
  store i32 %157, i32* %13, align 4
  br label %161

158:                                              ; preds = %145
  %159 = load i32, i32* @PROXY_ERROR_TARGET, align 4
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160, %156, %143, %137, %130
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @Disconnect(i32* %162)
  %164 = load i32*, i32** %14, align 8
  %165 = call i32 @ReleaseSock(i32* %164)
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %161, %148, %74, %64, %53, %43
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @GetIP(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @Internal_ProxyTcpConnect(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @SetTimeout(i32*, i64) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local %struct.TYPE_16__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @Endian16(i64) #1

declare dso_local i32 @StrLen(i32*) #1

declare dso_local i32 @SendAll(i32*, i32, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_16__*) #1

declare dso_local i32 @RecvAll(i32*, i32*, i32, i32) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
