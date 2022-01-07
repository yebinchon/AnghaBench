; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildIPv6PacketHeader.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildIPv6PacketHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32, i32*, i32, i32*, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i32 }

@IPV6_HEADER_HOP = common dso_local global i32 0, align 4
@IPV6_HEADER_ENDPOINT = common dso_local global i32 0, align 4
@IPV6_HEADER_ROUTING = common dso_local global i32 0, align 4
@IPV6_HEADER_FRAGMENT = common dso_local global i32 0, align 4
@IPV6_HEADER_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @BuildIPv6PacketHeader(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %181

12:                                               ; preds = %2
  %13 = call %struct.TYPE_13__* (...) @NewBuf()
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = call i32* (...) @NewQueueFast()
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 9
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @IPV6_HEADER_HOP, align 4
  %22 = call i32 @InsertQueueInt(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %12
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @IPV6_HEADER_ENDPOINT, align 4
  %31 = call i32 @InsertQueueInt(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @IPV6_HEADER_ROUTING, align 4
  %40 = call i32 @InsertQueueInt(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @IPV6_HEADER_FRAGMENT, align 4
  %49 = call i32 @InsertQueueInt(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @InsertQueueInt(i32* %51, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i8* @IPv6GetNextHeaderFromQueue(i32* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 10
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 10
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = call i32 @WriteBuf(%struct.TYPE_13__* %62, %struct.TYPE_14__* %65, i32 4)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 9
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %50
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i8* @IPv6GetNextHeaderFromQueue(i32* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @BuildAndAddIPv6PacketOptionHeader(%struct.TYPE_13__* %72, i32* %75, i8* %77, i32 %80)
  br label %82

82:                                               ; preds = %71, %50
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i8* @IPv6GetNextHeaderFromQueue(i32* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @BuildAndAddIPv6PacketOptionHeader(%struct.TYPE_13__* %88, i32* %91, i8* %93, i32 %96)
  br label %98

98:                                               ; preds = %87, %82
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i8* @IPv6GetNextHeaderFromQueue(i32* %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @BuildAndAddIPv6PacketOptionHeader(%struct.TYPE_13__* %104, i32* %107, i8* %109, i32 %112)
  br label %114

114:                                              ; preds = %103, %98
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = icmp ne %struct.TYPE_14__* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load i32*, i32** %7, align 8
  %121 = call i8* @IPv6GetNextHeaderFromQueue(i32* %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i8* %121, i8** %125, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = call i32 @WriteBuf(%struct.TYPE_13__* %126, %struct.TYPE_14__* %129, i32 4)
  br label %131

131:                                              ; preds = %119, %114
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %8, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = icmp eq %struct.TYPE_14__* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, 4
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %139, %131
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IPV6_HEADER_NONE, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @WriteBuf(%struct.TYPE_13__* %151, %struct.TYPE_14__* %154, i32 %157)
  br label %159

159:                                              ; preds = %150, %144
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @ReleaseQueue(i32* %160)
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %163 = call i32 @SeekBuf(%struct.TYPE_13__* %162, i32 0, i32 0)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, 4
  %168 = call i32 @Endian16(i32 %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to %struct.TYPE_12__*
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i32 %168, i32* %173, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %159
  %177 = load i32, i32* %8, align 4
  %178 = load i32*, i32** %5, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %159
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %3, align 8
  br label %181

181:                                              ; preds = %179, %11
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %182
}

declare dso_local %struct.TYPE_13__* @NewBuf(...) #1

declare dso_local i32* @NewQueueFast(...) #1

declare dso_local i32 @InsertQueueInt(i32*, i32) #1

declare dso_local i8* @IPv6GetNextHeaderFromQueue(i32*) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @BuildAndAddIPv6PacketOptionHeader(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @ReleaseQueue(i32*) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @Endian16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
