; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_probedesc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_probedesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i64, i64 }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i32 }

@DOF_SECT_PROBEDESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid probe section\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"bad alignment in probe description\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"truncated probe description\00", align 1
@DOF_SECT_STRTAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"corrupt probe provider\00", align 1
@DTRACE_PROVNAMELEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"corrupt probe module\00", align 1
@DTRACE_MODNAMELEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"corrupt probe function\00", align 1
@DTRACE_FUNCNAMELEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"corrupt probe name\00", align 1
@DTRACE_NAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_12__*)* @dtrace_dof_probedesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @dtrace_dof_probedesc(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = ptrtoint %struct.TYPE_15__* %13 to i64
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DOF_SECT_PROBEDESC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %214

23:                                               ; preds = %3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %214

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 40
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %214

44:                                               ; preds = %32
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = inttoptr i64 %49 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = load i32, i32* @DOF_SECT_STRTAB, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_13__* @dtrace_dof_sect(%struct.TYPE_15__* %51, i32 %52, i32 %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %9, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = icmp eq %struct.TYPE_13__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %214

60:                                               ; preds = %44
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %214

79:                                               ; preds = %60
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %83, %86
  %88 = inttoptr i64 %87 to i8*
  %89 = load i32, i32* @DTRACE_PROVNAMELEN, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %91, %94
  %96 = call i32 @MIN(i32 %90, i64 %95)
  %97 = call i32 @strncpy(i8* %82, i8* %88, i32 %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @DTRACE_PROVNAMELEN, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp uge i64 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %79
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %214

115:                                              ; preds = %79
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %119, %122
  %124 = inttoptr i64 %123 to i8*
  %125 = load i32, i32* @DTRACE_MODNAMELEN, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i64, i64* %12, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %127, %130
  %132 = call i32 @MIN(i32 %126, i64 %131)
  %133 = call i32 @strncpy(i8* %118, i8* %124, i32 %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @DTRACE_MODNAMELEN, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 0, i8* %140, align 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp uge i64 %143, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %115
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %214

151:                                              ; preds = %115
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load i64, i64* %11, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %155, %158
  %160 = inttoptr i64 %159 to i8*
  %161 = load i32, i32* @DTRACE_FUNCNAMELEN, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load i64, i64* %12, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = sub i64 %163, %166
  %168 = call i32 @MIN(i32 %162, i64 %167)
  %169 = call i32 @strncpy(i8* %154, i8* %160, i32 %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* @DTRACE_FUNCNAMELEN, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  store i8 0, i8* %176, align 1
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp uge i64 %179, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %151
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %185, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %214

187:                                              ; preds = %151
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = load i64, i64* %11, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %191, %194
  %196 = inttoptr i64 %195 to i8*
  %197 = load i32, i32* @DTRACE_NAMELEN, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i64, i64* %12, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = sub i64 %199, %202
  %204 = call i32 @MIN(i32 %198, i64 %203)
  %205 = call i32 @strncpy(i8* %190, i8* %196, i32 %204)
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* @DTRACE_NAMELEN, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  store i8 0, i8* %212, align 1
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %213, %struct.TYPE_12__** %4, align 8
  br label %214

214:                                              ; preds = %187, %184, %148, %112, %76, %59, %41, %29, %20
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %215
}

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_13__* @dtrace_dof_sect(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
