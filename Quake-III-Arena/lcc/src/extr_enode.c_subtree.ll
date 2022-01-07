; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_subtree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_40__* }

@inttype = common dso_local global %struct.TYPE_38__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"unknown size for type `%t'\0A\00", align 1
@MUL = common dso_local global i32 0, align 4
@signedptr = common dso_local global %struct.TYPE_38__* null, align 8
@unsignedptr = common dso_local global %struct.TYPE_38__* null, align 8
@SUB = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@U = common dso_local global i32 0, align 4
@DIV = common dso_local global i32 0, align 4
@I = common dso_local global i32 0, align 4
@longtype = common dso_local global %struct.TYPE_38__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_39__* (i32, %struct.TYPE_39__*, %struct.TYPE_39__*)* @subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_39__* @subtree(i32 %0, %struct.TYPE_39__* %1, %struct.TYPE_39__* %2) #0 {
  %4 = alloca %struct.TYPE_39__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_38__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %6, align 8
  store %struct.TYPE_39__* %2, %struct.TYPE_39__** %7, align 8
  %10 = load %struct.TYPE_38__*, %struct.TYPE_38__** @inttype, align 8
  store %struct.TYPE_38__* %10, %struct.TYPE_38__** %9, align 8
  %11 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %14 = call i64 @isarith(%struct.TYPE_40__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %20 = call i64 @isarith(%struct.TYPE_40__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_40__*, %struct.TYPE_40__** %24, align 8
  %26 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %29 = call %struct.TYPE_38__* @binary(%struct.TYPE_40__* %25, %struct.TYPE_40__* %28)
  store %struct.TYPE_38__* %29, %struct.TYPE_38__** %9, align 8
  %30 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %31 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %32 = call %struct.TYPE_39__* @cast(%struct.TYPE_39__* %30, %struct.TYPE_38__* %31)
  store %struct.TYPE_39__* %32, %struct.TYPE_39__** %6, align 8
  %33 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %35 = call %struct.TYPE_39__* @cast(%struct.TYPE_39__* %33, %struct.TYPE_38__* %34)
  store %struct.TYPE_39__* %35, %struct.TYPE_39__** %7, align 8
  br label %169

36:                                               ; preds = %16, %3
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %40 = call i64 @isptr(%struct.TYPE_40__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %112

42:                                               ; preds = %36
  %43 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_40__*, %struct.TYPE_40__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @isfunc(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %112, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_40__*, %struct.TYPE_40__** %52, align 8
  %54 = call i64 @isint(%struct.TYPE_40__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %112

56:                                               ; preds = %50
  %57 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_40__*, %struct.TYPE_40__** %58, align 8
  %60 = call %struct.TYPE_38__* @unqual(%struct.TYPE_40__* %59)
  store %struct.TYPE_38__* %60, %struct.TYPE_38__** %9, align 8
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_40__*, %struct.TYPE_40__** %62, align 8
  %64 = call %struct.TYPE_38__* @unqual(%struct.TYPE_40__* %63)
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_40__*, %struct.TYPE_40__** %71, align 8
  %73 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_40__* %72)
  br label %74

74:                                               ; preds = %69, %56
  %75 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %76 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_40__*, %struct.TYPE_40__** %77, align 8
  %79 = call %struct.TYPE_38__* @promote(%struct.TYPE_40__* %78)
  %80 = call %struct.TYPE_39__* @cast(%struct.TYPE_39__* %75, %struct.TYPE_38__* %79)
  store %struct.TYPE_39__* %80, %struct.TYPE_39__** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp sgt i64 %81, 1
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* @MUL, align 4
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** @signedptr, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call %struct.TYPE_39__* @cnsttree(%struct.TYPE_38__* %85, i64 %86)
  %88 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %89 = call %struct.TYPE_39__* @multree(i32 %84, %struct.TYPE_39__* %87, %struct.TYPE_39__* %88)
  store %struct.TYPE_39__* %89, %struct.TYPE_39__** %7, align 8
  br label %90

90:                                               ; preds = %83, %74
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_40__*, %struct.TYPE_40__** %92, align 8
  %94 = call i64 @isunsigned(%struct.TYPE_40__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** @unsignedptr, align 8
  %99 = call %struct.TYPE_39__* @cast(%struct.TYPE_39__* %97, %struct.TYPE_38__* %98)
  store %struct.TYPE_39__* %99, %struct.TYPE_39__** %7, align 8
  br label %104

100:                                              ; preds = %90
  %101 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %102 = load %struct.TYPE_38__*, %struct.TYPE_38__** @signedptr, align 8
  %103 = call %struct.TYPE_39__* @cast(%struct.TYPE_39__* %101, %struct.TYPE_38__* %102)
  store %struct.TYPE_39__* %103, %struct.TYPE_39__** %7, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @SUB, align 4
  %106 = load i32, i32* @P, align 4
  %107 = add nsw i32 %105, %106
  %108 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %109 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %111 = call %struct.TYPE_39__* @simplify(i32 %107, %struct.TYPE_38__* %108, %struct.TYPE_39__* %109, %struct.TYPE_39__* %110)
  store %struct.TYPE_39__* %111, %struct.TYPE_39__** %4, align 8
  br label %175

112:                                              ; preds = %50, %42, %36
  %113 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_40__*, %struct.TYPE_40__** %114, align 8
  %116 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %117, align 8
  %119 = call i64 @compatible(%struct.TYPE_40__* %115, %struct.TYPE_40__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %162

121:                                              ; preds = %112
  %122 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %123, align 8
  %125 = call %struct.TYPE_38__* @unqual(%struct.TYPE_40__* %124)
  store %struct.TYPE_38__* %125, %struct.TYPE_38__** %9, align 8
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %127, align 8
  %129 = call %struct.TYPE_38__* @unqual(%struct.TYPE_40__* %128)
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %121
  %135 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %136, align 8
  %138 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_40__* %137)
  br label %139

139:                                              ; preds = %134, %121
  %140 = load i32, i32* @SUB, align 4
  %141 = load i32, i32* @U, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** @unsignedptr, align 8
  %144 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %145 = load %struct.TYPE_38__*, %struct.TYPE_38__** @unsignedptr, align 8
  %146 = call %struct.TYPE_39__* @cast(%struct.TYPE_39__* %144, %struct.TYPE_38__* %145)
  %147 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %148 = load %struct.TYPE_38__*, %struct.TYPE_38__** @unsignedptr, align 8
  %149 = call %struct.TYPE_39__* @cast(%struct.TYPE_39__* %147, %struct.TYPE_38__* %148)
  %150 = call %struct.TYPE_39__* @simplify(i32 %142, %struct.TYPE_38__* %143, %struct.TYPE_39__* %146, %struct.TYPE_39__* %149)
  store %struct.TYPE_39__* %150, %struct.TYPE_39__** %6, align 8
  %151 = load i32, i32* @DIV, align 4
  %152 = load i32, i32* @I, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.TYPE_38__*, %struct.TYPE_38__** @longtype, align 8
  %155 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** @longtype, align 8
  %157 = call %struct.TYPE_39__* @cast(%struct.TYPE_39__* %155, %struct.TYPE_38__* %156)
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** @longtype, align 8
  %159 = load i64, i64* %8, align 8
  %160 = call %struct.TYPE_39__* @cnsttree(%struct.TYPE_38__* %158, i64 %159)
  %161 = call %struct.TYPE_39__* @simplify(i32 %153, %struct.TYPE_38__* %154, %struct.TYPE_39__* %157, %struct.TYPE_39__* %160)
  store %struct.TYPE_39__* %161, %struct.TYPE_39__** %4, align 8
  br label %175

162:                                              ; preds = %112
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %165 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %166 = call i32 @typeerror(i32 %163, %struct.TYPE_39__* %164, %struct.TYPE_39__* %165)
  br label %167

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168, %22
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %172 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %173 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %174 = call %struct.TYPE_39__* @simplify(i32 %170, %struct.TYPE_38__* %171, %struct.TYPE_39__* %172, %struct.TYPE_39__* %173)
  store %struct.TYPE_39__* %174, %struct.TYPE_39__** %4, align 8
  br label %175

175:                                              ; preds = %169, %139, %104
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  ret %struct.TYPE_39__* %176
}

declare dso_local i64 @isarith(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_38__* @binary(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_39__* @cast(%struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local i64 @isptr(%struct.TYPE_40__*) #1

declare dso_local i32 @isfunc(i32) #1

declare dso_local i64 @isint(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_38__* @unqual(%struct.TYPE_40__*) #1

declare dso_local i32 @error(i8*, %struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_38__* @promote(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_39__* @multree(i32, %struct.TYPE_39__*, %struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_39__* @cnsttree(%struct.TYPE_38__*, i64) #1

declare dso_local i64 @isunsigned(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_39__* @simplify(i32, %struct.TYPE_38__*, %struct.TYPE_39__*, %struct.TYPE_39__*) #1

declare dso_local i64 @compatible(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @typeerror(i32, %struct.TYPE_39__*, %struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
