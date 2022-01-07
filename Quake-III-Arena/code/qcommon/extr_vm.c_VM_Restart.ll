; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm.c_VM_Restart.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm.c_VM_Restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32*)*, i64, i32, i64 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i64, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@VMI_NATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"VM_Restart()\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vm/%s.qvm\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Loading vm file %s.\0A\00", align 1
@ERR_DROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"VM_Restart failed.\0A\00", align 1
@VM_MAGIC = common dso_local global i64 0, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"%s has bad header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @VM_Restart(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i32*)*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %14 = load i32, i32* @MAX_QPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load i32, i32* @MAX_QPATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  store i32 (i32*)* %29, i32 (i32*)** %12, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = trunc i64 %24 to i32
  %34 = call i32 @Q_strncpyz(i8* %26, i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 @VM_Free(%struct.TYPE_8__* %35)
  %37 = load i32 (i32*)*, i32 (i32*)** %12, align 8
  %38 = load i32, i32* @VMI_NATIVE, align 4
  %39 = call %struct.TYPE_8__* @VM_Create(i8* %26, i32 (i32*)* %37, i32 %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %2, align 8
  store i32 1, i32* %13, align 4
  %41 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %41)
  br label %186

42:                                               ; preds = %1
  %43 = call i32 @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %17)
  %44 = trunc i64 %15 to i32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Com_sprintf(i8* %17, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = call i32 @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %50 = bitcast %struct.TYPE_9__** %4 to i8**
  %51 = call i32 @FS_ReadFile(i8* %17, i8** %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @ERR_DROP, align 4
  %56 = call i32 (i32, i8*, ...) @Com_Error(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %42
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %75, %57
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 10
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = bitcast %struct.TYPE_9__* %63 to i32*
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @LittleLong(i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = bitcast %struct.TYPE_9__* %70 to i32*
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %58

78:                                               ; preds = %58
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @VM_MAGIC, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %104, label %84

84:                                               ; preds = %78
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp sle i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99, %94, %89, %84, %78
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = call i32 @VM_Free(%struct.TYPE_8__* %105)
  %107 = load i32, i32* @ERR_FATAL, align 4
  %108 = call i32 (i32, i8*, ...) @Com_Error(i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %112, %115
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  store i32 %120, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %127, %109
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = shl i32 1, %123
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %121

130:                                              ; preds = %121
  %131 = load i32, i32* %7, align 4
  %132 = shl i32 1, %131
  store i32 %132, i32* %6, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @Com_Memset(i64 %135, i32 0, i32 %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = bitcast %struct.TYPE_9__* %141 to i32*
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %150, %153
  %155 = call i32 @Com_Memcpy(i64 %140, i32* %147, i32 %154)
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %179, %130
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %156
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = inttoptr i64 %168 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @LittleLong(i32 %170)
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  %178 = inttoptr i64 %177 to i32*
  store i32 %171, i32* %178, align 4
  br label %179

179:                                              ; preds = %162
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 4
  store i32 %181, i32* %7, align 4
  br label %156

182:                                              ; preds = %156
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = call i32 @FS_FreeFile(%struct.TYPE_9__* %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %185, %struct.TYPE_8__** %2, align 8
  store i32 1, i32* %13, align 4
  br label %186

186:                                              ; preds = %182, %22
  %187 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @VM_Free(%struct.TYPE_8__*) #2

declare dso_local %struct.TYPE_8__* @VM_Create(i8*, i32 (i32*)*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @FS_ReadFile(i8*, i8**) #2

declare dso_local i32 @Com_Error(i32, i8*, ...) #2

declare dso_local i32 @LittleLong(i32) #2

declare dso_local i32 @Com_Memset(i64, i32, i32) #2

declare dso_local i32 @Com_Memcpy(i64, i32*, i32) #2

declare dso_local i32 @FS_FreeFile(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
