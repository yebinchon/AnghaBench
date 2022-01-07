; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_retcode.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_retcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_38__ = type { i64, i32, i64, i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_34__** }
%struct.TYPE_34__ = type { %struct.TYPE_37__** }

@events = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@cfunc = common dso_local global %struct.TYPE_36__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"illegal return type; found `%t' expected `%t'\0A\00", align 1
@retv = common dso_local global %struct.TYPE_38__* null, align 8
@RIGHT = common dso_local global i64 0, align 8
@CALL = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@ASGN = common dso_local global i32 0, align 4
@AUTO = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"pointer to a %s is an illegal return value\0A\00", align 1
@PARAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"pointer to %s `%s' is an illegal return value\0A\00", align 1
@RET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retcode(%struct.TYPE_37__* %0) #0 {
  %2 = alloca %struct.TYPE_37__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %2, align 8
  %6 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %7 = icmp eq %struct.TYPE_37__* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @events, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @events, i32 0, i32 0), align 8
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** @cfunc, align 8
  %14 = call i32 @apply(i64 %12, %struct.TYPE_36__* %13, %struct.TYPE_37__* null)
  br label %15

15:                                               ; preds = %11, %8
  br label %188

16:                                               ; preds = %1
  %17 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %18 = call %struct.TYPE_37__* @pointer(%struct.TYPE_37__* %17)
  store %struct.TYPE_37__* %18, %struct.TYPE_37__** %2, align 8
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** @cfunc, align 8
  %20 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @freturn(i32 %21)
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %24 = call i32* @assign(i8* %22, %struct.TYPE_37__* %23)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** @cfunc, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @freturn(i32 %33)
  %35 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %34)
  br label %188

36:                                               ; preds = %16
  %37 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call %struct.TYPE_37__* @cast(%struct.TYPE_37__* %37, i32* %38)
  store %struct.TYPE_37__* %39, %struct.TYPE_37__** %2, align 8
  %40 = load %struct.TYPE_38__*, %struct.TYPE_38__** @retv, align 8
  %41 = icmp ne %struct.TYPE_38__* %40, null
  br i1 %41, label %42, label %93

42:                                               ; preds = %36
  %43 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %44 = call i64 @iscallb(%struct.TYPE_37__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load i64, i64* @RIGHT, align 8
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @CALL, align 8
  %52 = load i64, i64* @B, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %59, i64 0
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %63, i64 0
  %65 = load %struct.TYPE_37__*, %struct.TYPE_37__** %64, align 8
  %66 = load %struct.TYPE_38__*, %struct.TYPE_38__** @retv, align 8
  %67 = call %struct.TYPE_37__* @idtree(%struct.TYPE_38__* %66)
  %68 = call %struct.TYPE_37__* @tree(i64 %53, i32 %56, %struct.TYPE_37__* %65, %struct.TYPE_37__* %67)
  %69 = load %struct.TYPE_38__*, %struct.TYPE_38__** @retv, align 8
  %70 = call %struct.TYPE_37__* @idtree(%struct.TYPE_38__* %69)
  %71 = call %struct.TYPE_37__* @rvalue(%struct.TYPE_37__* %70)
  %72 = call %struct.TYPE_37__* @tree(i64 %47, i32 %50, %struct.TYPE_37__* %68, %struct.TYPE_37__* %71)
  store %struct.TYPE_37__* %72, %struct.TYPE_37__** %2, align 8
  br label %80

73:                                               ; preds = %42
  %74 = load i32, i32* @ASGN, align 4
  %75 = load %struct.TYPE_38__*, %struct.TYPE_38__** @retv, align 8
  %76 = call %struct.TYPE_37__* @idtree(%struct.TYPE_38__* %75)
  %77 = call %struct.TYPE_37__* @rvalue(%struct.TYPE_37__* %76)
  %78 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %79 = call %struct.TYPE_37__* @asgntree(i32 %74, %struct.TYPE_37__* %77, %struct.TYPE_37__* %78)
  store %struct.TYPE_37__* %79, %struct.TYPE_37__** %2, align 8
  br label %80

80:                                               ; preds = %73, %46
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %82 = call i32 @walk(%struct.TYPE_37__* %81, i32 0, i32 0)
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @events, i32 0, i32 0), align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @events, i32 0, i32 0), align 8
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** @cfunc, align 8
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** @retv, align 8
  %89 = call %struct.TYPE_37__* @idtree(%struct.TYPE_38__* %88)
  %90 = call %struct.TYPE_37__* @rvalue(%struct.TYPE_37__* %89)
  %91 = call i32 @apply(i64 %86, %struct.TYPE_36__* %87, %struct.TYPE_37__* %90)
  br label %92

92:                                               ; preds = %85, %80
  br label %188

93:                                               ; preds = %36
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @events, i32 0, i32 0), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load i32, i32* @AUTO, align 4
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @level, align 4
  %102 = call %struct.TYPE_38__* @genident(i32 %97, i32 %100, i32 %101)
  store %struct.TYPE_38__* %102, %struct.TYPE_38__** %4, align 8
  %103 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %104 = call i32 @addlocal(%struct.TYPE_38__* %103)
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %107 = call %struct.TYPE_37__* @asgn(%struct.TYPE_38__* %105, %struct.TYPE_37__* %106)
  %108 = call i32 @walk(%struct.TYPE_37__* %107, i32 0, i32 0)
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @events, i32 0, i32 0), align 8
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** @cfunc, align 8
  %111 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %112 = call %struct.TYPE_37__* @idtree(%struct.TYPE_38__* %111)
  %113 = call i32 @apply(i64 %109, %struct.TYPE_36__* %110, %struct.TYPE_37__* %112)
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %115 = call %struct.TYPE_37__* @idtree(%struct.TYPE_38__* %114)
  store %struct.TYPE_37__* %115, %struct.TYPE_37__** %2, align 8
  br label %116

116:                                              ; preds = %96, %93
  %117 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @isfloat(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32* @promote(i32 %126)
  %128 = call %struct.TYPE_37__* @cast(%struct.TYPE_37__* %123, i32* %127)
  store %struct.TYPE_37__* %128, %struct.TYPE_37__** %2, align 8
  br label %129

129:                                              ; preds = %122, %116
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @isptr(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %176

135:                                              ; preds = %129
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %137 = call %struct.TYPE_38__* @localaddr(%struct.TYPE_37__* %136)
  store %struct.TYPE_38__* %137, %struct.TYPE_38__** %5, align 8
  %138 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %139 = icmp ne %struct.TYPE_38__* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %135
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145, %140
  %151 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PARAM, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %158 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %157)
  br label %175

159:                                              ; preds = %145, %135
  %160 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %161 = icmp ne %struct.TYPE_38__* %160, null
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PARAM, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %170 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %169, i32 %172)
  br label %174

174:                                              ; preds = %162, %159
  br label %175

175:                                              ; preds = %174, %150
  br label %176

176:                                              ; preds = %175, %129
  %177 = load i32, i32* @RET, align 4
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @mkop(i32 %177, i32 %180)
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %186 = call %struct.TYPE_37__* @tree(i64 %181, i32 %184, %struct.TYPE_37__* %185, %struct.TYPE_37__* null)
  %187 = call i32 @walk(%struct.TYPE_37__* %186, i32 0, i32 0)
  br label %188

188:                                              ; preds = %176, %92, %27, %15
  ret void
}

declare dso_local i32 @apply(i64, %struct.TYPE_36__*, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @pointer(%struct.TYPE_37__*) #1

declare dso_local i32* @assign(i8*, %struct.TYPE_37__*) #1

declare dso_local i8* @freturn(i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local %struct.TYPE_37__* @cast(%struct.TYPE_37__*, i32*) #1

declare dso_local i64 @iscallb(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @tree(i64, i32, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @idtree(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_37__* @rvalue(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @asgntree(i32, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @walk(%struct.TYPE_37__*, i32, i32) #1

declare dso_local %struct.TYPE_38__* @genident(i32, i32, i32) #1

declare dso_local i32 @addlocal(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_37__* @asgn(%struct.TYPE_38__*, %struct.TYPE_37__*) #1

declare dso_local i32 @isfloat(i32) #1

declare dso_local i32* @promote(i32) #1

declare dso_local i64 @isptr(i32) #1

declare dso_local %struct.TYPE_38__* @localaddr(%struct.TYPE_37__*) #1

declare dso_local i32 @warning(i8*, i8*, ...) #1

declare dso_local i64 @mkop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
