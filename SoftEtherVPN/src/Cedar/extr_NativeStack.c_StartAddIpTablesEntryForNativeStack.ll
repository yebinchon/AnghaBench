; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_StartAddIpTablesEntryForNativeStack.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_StartAddIpTablesEntryForNativeStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"-p tcp --tcp-flags RST RST --sport %u:%u ! -s %r/32 ! -d %r/32 -m connmark ! --mark 0x%x -j DROP\00", align 1
@NN_RAW_IP_PORT_START = common dso_local global i32 0, align 4
@NN_RAW_IP_PORT_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"-p icmp --icmp-type 3/3 ! -s %r/32 ! -d %r/32 -m connmark ! --mark 0x%x -j DROP\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"iptables -D %s %s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"iptables -I %s %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Run \22%s\22 failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Run \22%s\22 ok.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @StartAddIpTablesEntryForNativeStack(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = call i64 (...) @IsIpTablesSupported()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %194

18:                                               ; preds = %2
  %19 = call i8* @ZeroMalloc(i32 8)
  %20 = bitcast i8* %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %5, align 8
  %21 = call i32 @NewListFast(i32* null)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @Sha1(i32 %26, i8* %27, i64 %28)
  %30 = call i8* @ZeroMalloc(i32 20)
  %31 = bitcast i8* %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = call i32 @GenerateDummyIpAndMark(i32 %34, %struct.TYPE_9__* %35, i32 0)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @StrCpy(i32 %39, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i32, i32* @NN_RAW_IP_PORT_START, align 4
  %47 = load i32, i32* @NN_RAW_IP_PORT_END, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, i8*, i32, i32, ...) @Format(i8* %45, i32 4, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32* %49, i32* %51, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = call i32 @Add(i32 %58, %struct.TYPE_9__* %59)
  %61 = call i8* @ZeroMalloc(i32 20)
  %62 = bitcast i8* %61 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %7, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = call i32 @GenerateDummyIpAndMark(i32 %65, %struct.TYPE_9__* %66, i32 1)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @StrCpy(i32 %70, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = ptrtoint i32* %78 to i32
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = ptrtoint i32* %81 to i32
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i32, i8*, i32, i32, ...) @Format(i8* %76, i32 4, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82, i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = call i32 @Add(i32 %89, %struct.TYPE_9__* %90)
  store i32 1, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %92

92:                                               ; preds = %190, %18
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @LIST_NUM(i32 %96)
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %99, label %193

99:                                               ; preds = %92
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %8, align 8
  %104 = call %struct.TYPE_9__* @LIST_DATA(i32 %102, i64 %103)
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %10, align 8
  store i64 0, i64* %9, align 8
  br label %105

105:                                              ; preds = %138, %99
  %106 = load i64, i64* %9, align 8
  %107 = icmp slt i64 %106, 100
  br i1 %107, label %108, label %141

108:                                              ; preds = %105
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @GetCurrentIpTableLineNumber(i32 %111, i32* %113, i32* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %108
  %122 = load i32, i32* @MAX_PATH, align 4
  %123 = zext i32 %122 to i64
  %124 = call i8* @llvm.stacksave()
  store i8* %124, i8** %11, align 8
  %125 = alloca i8, i64 %123, align 16
  store i64 %123, i64* %12, align 8
  %126 = trunc i64 %123 to i32
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, i8*, i32, i32, ...) @Format(i8* %125, i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %132)
  %134 = call i32 @system(i8* %125)
  %135 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %135)
  br label %137

136:                                              ; preds = %108
  br label %141

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %9, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %9, align 8
  br label %105

141:                                              ; preds = %136, %105
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @GetCurrentIpTableLineNumber(i32 %144, i32* %146, i32* %148, i32 %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %189

154:                                              ; preds = %141
  %155 = load i32, i32* @MAX_PATH, align 4
  %156 = zext i32 %155 to i64
  %157 = call i8* @llvm.stacksave()
  store i8* %157, i8** %13, align 8
  %158 = alloca i8, i64 %156, align 16
  store i64 %156, i64* %14, align 8
  %159 = trunc i64 %156 to i32
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8*, i32, i8*, i32, i32, ...) @Format(i8* %158, i32 %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %165)
  %167 = call i32 @system(i8* %158)
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @GetCurrentIpTableLineNumber(i32 %170, i32* %172, i32* %174, i32 %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %154
  %181 = call i32 @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %158)
  store i32 0, i32* %6, align 4
  store i32 2, i32* %15, align 4
  br label %185

182:                                              ; preds = %154
  %183 = call i32 @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %158)
  br label %184

184:                                              ; preds = %182
  store i32 0, i32* %15, align 4
  br label %185

185:                                              ; preds = %184, %180
  %186 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %15, align 4
  switch i32 %187, label %202 [
    i32 0, label %188
    i32 2, label %193
  ]

188:                                              ; preds = %185
  br label %189

189:                                              ; preds = %188, %141
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %8, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %8, align 8
  br label %92

193:                                              ; preds = %185, %92
  br label %194

194:                                              ; preds = %193, %2
  %195 = load i32, i32* %6, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = call i32 @EndAddIpTablesEntryForNativeStack(%struct.TYPE_8__* %198)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %200

200:                                              ; preds = %197, %194
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %201

202:                                              ; preds = %185
  unreachable
}

declare dso_local i64 @IsIpTablesSupported(...) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @NewListFast(i32*) #1

declare dso_local i32 @Sha1(i32, i8*, i64) #1

declare dso_local i32 @GenerateDummyIpAndMark(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Format(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @Add(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_9__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @GetCurrentIpTableLineNumber(i32, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @system(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Debug(i8*, i8*) #1

declare dso_local i32 @EndAddIpTablesEntryForNativeStack(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
