; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_PrintCmdHelp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_PrintCmdHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 (%struct.TYPE_25__*, i8*)* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CMD_HELP_TITLE\00", align 1
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD_HELP_DESCRIPTION\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 83, i32 37, i32 115, i32 0], align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"CMD_HELP_HELP\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CMD_HELP_USAGE\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"CMD_HELP_ARGS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintCmdHelp(%struct.TYPE_25__* %0, i8* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %6, align 8
  %19 = load i32, i32* @MAX_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %24 = icmp eq %struct.TYPE_25__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = icmp eq %struct.TYPE_24__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %3
  store i32 1, i32* %18, align 4
  br label %215

32:                                               ; preds = %28
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = call i32 @GetConsoleWidth(%struct.TYPE_25__* %33)
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 32
  %38 = sext i32 %37 to i64
  %39 = mul i64 1, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i8* @Malloc(i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @GetCommandHelpStr(i8* %43, i8** %11, i8** %12, i8** %13)
  %45 = call i8* @MakeCharArray(i8 signext 32, i32 2)
  store i8* %45, i8** %17, align 8
  %46 = trunc i64 %20 to i32
  %47 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @UniFormat(i8* %22, i32 %46, i8* %47, i8* %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %51, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = call i32 %52(%struct.TYPE_25__* %53, i8* %22)
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %56, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %59 = call i32 %57(%struct.TYPE_25__* %58, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %61, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = call i8* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 %62(%struct.TYPE_25__* %63, i8* %64)
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sub nsw i32 %67, 2
  %69 = call %struct.TYPE_23__* @SeparateStringByWidth(i8* %66, i32 %68)
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %94, %32
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %70
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i8*, i8** %17, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, i8*, i8*, ...) @UniFormat(i8* %77, i32 %78, i8* bitcast ([5 x i32]* @.str.3 to i8*), i8* %79, i32 %86)
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %89, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 %90(%struct.TYPE_25__* %91, i8* %92)
  br label %94

94:                                               ; preds = %76
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %70

97:                                               ; preds = %70
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %99 = call i32 @UniFreeToken(%struct.TYPE_23__* %98)
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %101, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %104 = call i32 %102(%struct.TYPE_25__* %103, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %106, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %109 = call i8* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 %107(%struct.TYPE_25__* %108, i8* %109)
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %112, 2
  %114 = call %struct.TYPE_23__* @SeparateStringByWidth(i8* %111, i32 %113)
  store %struct.TYPE_23__* %114, %struct.TYPE_23__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %139, %97
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %115
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i8*, i8** %17, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i32, i8*, i8*, ...) @UniFormat(i8* %122, i32 %123, i8* bitcast ([5 x i32]* @.str.3 to i8*), i8* %124, i32 %131)
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %134, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 %135(%struct.TYPE_25__* %136, i8* %137)
  br label %139

139:                                              ; preds = %121
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  br label %115

142:                                              ; preds = %115
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %144 = call i32 @UniFreeToken(%struct.TYPE_23__* %143)
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %146, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %149 = call i32 %147(%struct.TYPE_25__* %148, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %151, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %154 = call i8* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %155 = call i32 %152(%struct.TYPE_25__* %153, i8* %154)
  %156 = load i8*, i8** %12, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sub nsw i32 %157, 2
  %159 = call %struct.TYPE_23__* @SeparateStringByWidth(i8* %156, i32 %158)
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %160

160:                                              ; preds = %184, %142
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %187

166:                                              ; preds = %160
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i8*, i8** %17, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, i32, i8*, i8*, ...) @UniFormat(i8* %167, i32 %168, i8* bitcast ([5 x i32]* @.str.3 to i8*), i8* %169, i32 %176)
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %179, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 %180(%struct.TYPE_25__* %181, i8* %182)
  br label %184

184:                                              ; preds = %166
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %16, align 4
  br label %160

187:                                              ; preds = %160
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %189 = call i32 @UniFreeToken(%struct.TYPE_23__* %188)
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp sge i32 %192, 1
  br i1 %193, label %194, label %210

194:                                              ; preds = %187
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %196, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %199 = call i32 %197(%struct.TYPE_25__* %198, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = load i32 (%struct.TYPE_25__*, i8*)*, i32 (%struct.TYPE_25__*, i8*)** %201, align 8
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %204 = call i8* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %205 = call i32 %202(%struct.TYPE_25__* %203, i8* %204)
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %207 = load i8*, i8** %5, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %209 = call i32 @PrintCandidateHelp(%struct.TYPE_25__* %206, i8* %207, %struct.TYPE_24__* %208, i32 2)
  br label %210

210:                                              ; preds = %194, %187
  %211 = load i8*, i8** %17, align 8
  %212 = call i32 @Free(i8* %211)
  %213 = load i8*, i8** %9, align 8
  %214 = call i32 @Free(i8* %213)
  store i32 0, i32* %18, align 4
  br label %215

215:                                              ; preds = %210, %31
  %216 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %18, align 4
  switch i32 %217, label %219 [
    i32 0, label %218
    i32 1, label %218
  ]

218:                                              ; preds = %215, %215
  ret void

219:                                              ; preds = %215
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetConsoleWidth(%struct.TYPE_25__*) #2

declare dso_local i8* @Malloc(i32) #2

declare dso_local i32 @GetCommandHelpStr(i8*, i8**, i8**, i8**) #2

declare dso_local i8* @MakeCharArray(i8 signext, i32) #2

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local %struct.TYPE_23__* @SeparateStringByWidth(i8*, i32) #2

declare dso_local i32 @UniFreeToken(%struct.TYPE_23__*) #2

declare dso_local i32 @PrintCandidateHelp(%struct.TYPE_25__*, i8*, %struct.TYPE_24__*, i32) #2

declare dso_local i32 @Free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
