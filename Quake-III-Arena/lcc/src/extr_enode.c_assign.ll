; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_assign.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }

@inttype = common dso_local global %struct.TYPE_21__* null, align 8
@Aflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"assignment between `%t' and `%t' is compiler-dependent\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @assign(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %12 = call %struct.TYPE_21__* @unqual(%struct.TYPE_21__* %11)
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %6, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = call %struct.TYPE_21__* @unqual(%struct.TYPE_21__* %13)
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %4, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = call i64 @isenum(%struct.TYPE_21__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %4, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %215

33:                                               ; preds = %27
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = call i64 @isarith(%struct.TYPE_21__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = call i64 @isarith(%struct.TYPE_21__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = call i64 @isstruct(%struct.TYPE_21__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = icmp eq %struct.TYPE_21__* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %37
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %3, align 8
  br label %215

51:                                               ; preds = %45, %41
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = call i64 @isptr(%struct.TYPE_21__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = call i64 @isnullptr(%struct.TYPE_22__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %3, align 8
  br label %215

61:                                               ; preds = %55, %51
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = call i64 @isvoidptr(%struct.TYPE_21__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = call i64 @isptr(%struct.TYPE_21__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = call i64 @isptr(%struct.TYPE_21__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %69
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = call i64 @isvoidptr(%struct.TYPE_21__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %73, %65
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = call i64 @isconst(%struct.TYPE_21__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = call i64 @isconst(%struct.TYPE_21__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = call i64 @isvolatile(%struct.TYPE_21__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = call i64 @isvolatile(%struct.TYPE_21__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %102, %struct.TYPE_21__** %3, align 8
  br label %215

103:                                              ; preds = %95, %83, %73, %69
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = call i64 @isptr(%struct.TYPE_21__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %103
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %109 = call i64 @isptr(%struct.TYPE_21__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %107
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = call %struct.TYPE_21__* @unqual(%struct.TYPE_21__* %114)
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = call %struct.TYPE_21__* @unqual(%struct.TYPE_21__* %118)
  %120 = call i64 @eqtype(%struct.TYPE_21__* %115, %struct.TYPE_21__* %119, i32 1)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %111
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %124, align 8
  %126 = call i64 @isconst(%struct.TYPE_21__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = call i64 @isconst(%struct.TYPE_21__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %148, label %134

134:                                              ; preds = %128, %122
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = call i64 @isvolatile(%struct.TYPE_21__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = call i64 @isvolatile(%struct.TYPE_21__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %140, %134
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %147, %struct.TYPE_21__** %3, align 8
  br label %215

148:                                              ; preds = %140, %128, %111, %107, %103
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %150 = call i64 @isptr(%struct.TYPE_21__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %214

152:                                              ; preds = %148
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = call i64 @isptr(%struct.TYPE_21__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %214

156:                                              ; preds = %152
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %158, align 8
  %160 = call i64 @isconst(%struct.TYPE_21__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = call i64 @isconst(%struct.TYPE_21__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %214, label %168

168:                                              ; preds = %162, %156
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = call i64 @isvolatile(%struct.TYPE_21__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = call i64 @isvolatile(%struct.TYPE_21__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %214, label %180

180:                                              ; preds = %174, %168
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = call %struct.TYPE_21__* @unqual(%struct.TYPE_21__* %183)
  store %struct.TYPE_21__* %184, %struct.TYPE_21__** %7, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %186, align 8
  %188 = call %struct.TYPE_21__* @unqual(%struct.TYPE_21__* %187)
  store %struct.TYPE_21__* %188, %struct.TYPE_21__** %8, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %190 = call i64 @isenum(%struct.TYPE_21__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %180
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** @inttype, align 8
  %195 = icmp eq %struct.TYPE_21__* %193, %194
  br i1 %195, label %204, label %196

196:                                              ; preds = %192, %180
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %198 = call i64 @isenum(%struct.TYPE_21__* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %196
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** @inttype, align 8
  %203 = icmp eq %struct.TYPE_21__* %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %200, %192
  %205 = load i32, i32* @Aflag, align 4
  %206 = icmp sge i32 %205, 1
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %210 = call i32 @warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %208, %struct.TYPE_21__* %209)
  br label %211

211:                                              ; preds = %207, %204
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %212, %struct.TYPE_21__** %3, align 8
  br label %215

213:                                              ; preds = %200, %196
  br label %214

214:                                              ; preds = %213, %174, %162, %152, %148
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %215

215:                                              ; preds = %214, %211, %146, %101, %59, %49, %32
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %216
}

declare dso_local %struct.TYPE_21__* @unqual(%struct.TYPE_21__*) #1

declare dso_local i64 @isenum(%struct.TYPE_21__*) #1

declare dso_local i64 @isarith(%struct.TYPE_21__*) #1

declare dso_local i64 @isstruct(%struct.TYPE_21__*) #1

declare dso_local i64 @isptr(%struct.TYPE_21__*) #1

declare dso_local i64 @isnullptr(%struct.TYPE_22__*) #1

declare dso_local i64 @isvoidptr(%struct.TYPE_21__*) #1

declare dso_local i64 @isconst(%struct.TYPE_21__*) #1

declare dso_local i64 @isvolatile(%struct.TYPE_21__*) #1

declare dso_local i64 @eqtype(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @warning(i8*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
