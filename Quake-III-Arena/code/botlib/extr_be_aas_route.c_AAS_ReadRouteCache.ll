; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_ReadRouteCache.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_ReadRouteCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__***, %struct.TYPE_8__**, i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 (i32)*, i32 (%struct.TYPE_7__*, i32, i32)*, i32 (i8*, i32*, i32)* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i64, i64, i32, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"maps/%s.rcd\00", align 1
@aasworld = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FS_READ = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@RCID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s is not a route cache dump\0A\00", align 1
@RCVERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"route cache dump has wrong version %d, should be %d\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_ReadRouteCache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_QPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @MAX_QPATH, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 6), align 8
  %16 = call i32 @Com_sprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 2), align 8
  %18 = load i32, i32* @FS_READ, align 4
  %19 = call i32 %17(i8* %13, i32* %4, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %204

24:                                               ; preds = %0
  %25 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 1), align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 %25(%struct.TYPE_7__* %7, i32 48, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RCID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @AAS_Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %204

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RCVERSION, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RCVERSION, align 8
  %44 = call i32 (i8*, ...) @AAS_Error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %42, i64 %43)
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %204

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @qfalse, align 4
  store i32 %52, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %204

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 1), align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %204

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 5), align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i64 @CRC_ProcessString(i8* %64, i32 %68)
  %70 = icmp ne i64 %62, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %204

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 4), align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 1), align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = trunc i64 %80 to i32
  %82 = call i64 @CRC_ProcessString(i8* %77, i32 %81)
  %83 = icmp ne i64 %75, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @qfalse, align 4
  store i32 %85, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %204

86:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %128, %86
  %88 = load i32, i32* %2, align 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %131

92:                                               ; preds = %87
  %93 = load i32, i32* %4, align 4
  %94 = call %struct.TYPE_8__* @AAS_ReadCache(i32 %93)
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %8, align 8
  %95 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %95, i64 %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %104, align 8
  %105 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %105, i64 %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = icmp ne %struct.TYPE_8__* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %92
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %114, i64 %117
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %120, align 8
  br label %121

121:                                              ; preds = %112, %92
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %123, i64 %126
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %127, align 8
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %2, align 4
  br label %87

131:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %196, %131
  %133 = load i32, i32* %2, align 4
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %199

137:                                              ; preds = %132
  %138 = load i32, i32* %4, align 4
  %139 = call %struct.TYPE_8__* @AAS_ReadCache(i32 %138)
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %8, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @AAS_ClusterAreaNum(i64 %142, i64 %145)
  store i32 %146, i32* %3, align 4
  %147 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %147, i64 %150
  %152 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %152, i64 %154
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** %158, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %160, align 8
  %161 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %161, i64 %164
  %166 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %165, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %166, i64 %168
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = icmp ne %struct.TYPE_8__* %170, null
  br i1 %171, label %172, label %185

172:                                              ; preds = %137
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %174, i64 %177
  %179 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %179, i64 %181
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %184, align 8
  br label %185

185:                                              ; preds = %172, %137
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %187 = load %struct.TYPE_8__***, %struct.TYPE_8__**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %187, i64 %190
  %192 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %191, align 8
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %192, i64 %194
  store %struct.TYPE_8__* %186, %struct.TYPE_8__** %195, align 8
  br label %196

196:                                              ; preds = %185
  %197 = load i32, i32* %2, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %2, align 4
  br label %132

199:                                              ; preds = %132
  %200 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 0), align 8
  %201 = load i32, i32* %4, align 4
  %202 = call i32 %200(i32 %201)
  %203 = load i32, i32* @qtrue, align 4
  store i32 %203, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %204

204:                                              ; preds = %199, %84, %71, %58, %51, %40, %32, %22
  %205 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %1, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @AAS_Error(i8*, ...) #2

declare dso_local i64 @CRC_ProcessString(i8*, i32) #2

declare dso_local %struct.TYPE_8__* @AAS_ReadCache(i32) #2

declare dso_local i32 @AAS_ClusterAreaNum(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
