; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_decl.c_parameters.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_decl.c_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__** }

@kind = common dso_local global i64* null, align 8
@t = common dso_local global i64 0, align 8
@tsym = common dso_local global i32 0, align 4
@ELLIPSIS = common dso_local global i64 0, align 8
@parameters.sentinel = internal global %struct.symbol zeroinitializer, align 8
@voidtype = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"illegal formal parameter types\0A\00", align 1
@REGISTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"missing parameter type\0A\00", align 1
@src = common dso_local global i32 0, align 4
@Aflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"missing prototype\0A\00", align 1
@PERM = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"expecting an identifier\0A\00", align 1
@token = common dso_local global i8* null, align 8
@inttype = common dso_local global %struct.TYPE_13__* null, align 8
@parameters.stop = internal global [5 x i8] c"\82\80\81)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol** (%struct.TYPE_13__*)* @parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol** @parameters(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.symbol**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.symbol*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32* null, i32** %3, align 8
  %11 = load i64*, i64** @kind, align 8
  %12 = load i64, i64* @t, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 128
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @t, align 8
  %18 = load i32, i32* @tsym, align 4
  %19 = call i64 @istypename(i64 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %163

21:                                               ; preds = %16, %1
  store i32 0, i32* %5, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %22

22:                                               ; preds = %110, %21
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i64, i64* @t, align 8
  %27 = load i64, i64* @ELLIPSIS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.symbol, %struct.symbol* @parameters.sentinel, i32 0, i32 1), align 8
  %31 = icmp eq %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @voidtype, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** getelementptr inbounds (%struct.symbol, %struct.symbol* @parameters.sentinel, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.symbol, %struct.symbol* @parameters.sentinel, i32 0, i32 0), align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** @voidtype, align 8
  %37 = icmp eq %struct.TYPE_13__* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32*, i32** %3, align 8
  %42 = call i32* @append(%struct.symbol* @parameters.sentinel, i32* %41)
  store i32* %42, i32** %3, align 8
  %43 = call i64 (...) @gettok()
  store i64 %43, i64* @t, align 8
  br label %112

44:                                               ; preds = %25, %22
  %45 = load i64, i64* @t, align 8
  %46 = load i32, i32* @tsym, align 4
  %47 = call i64 @istypename(i64 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @t, align 8
  %51 = load i64, i64* @REGISTER, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49, %44
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = call i32 @specifier(i32* %8)
  %59 = call %struct.TYPE_13__* @dclr(i32 %58, i8** %9, i32* null, i32 1)
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %7, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** @voidtype, align 8
  %62 = icmp eq %struct.TYPE_13__* %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66, %55
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** @voidtype, align 8
  %72 = icmp eq %struct.TYPE_13__* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %66, %63
  %74 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i8*, i8** %9, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = call i8* @stringd(i32 %79)
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** @voidtype, align 8
  %84 = icmp ne %struct.TYPE_13__* %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = call %struct.symbol* @dclparam(i32 %86, i8* %87, %struct.TYPE_13__* %88, i32* @src)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32* @append(%struct.symbol* %89, i32* %90)
  store i32* %91, i32** %3, align 8
  br label %92

92:                                               ; preds = %85, %81
  %93 = load i32, i32* @Aflag, align 4
  %94 = icmp sge i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = call i32 @hasproto(%struct.TYPE_13__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = call i32 @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95, %92
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = icmp eq %struct.TYPE_13__* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %6, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i64, i64* @t, align 8
  %108 = icmp ne i64 %107, 44
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %112

110:                                              ; preds = %106
  %111 = call i64 (...) @gettok()
  store i64 %111, i64* @t, align 8
  br label %22

112:                                              ; preds = %109, %40
  %113 = load i32*, i32** %3, align 8
  %114 = call i64 @length(i32* %113)
  %115 = add nsw i64 %114, 1
  %116 = load i32, i32* @PERM, align 4
  %117 = call %struct.TYPE_13__** @newarray(i64 %115, i32 8, i32 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store %struct.TYPE_13__** %117, %struct.TYPE_13__*** %121, align 8
  %122 = load i32, i32* @FUNC, align 4
  %123 = call %struct.symbol** @ltov(i32** %3, i32 %122)
  store %struct.symbol** %123, %struct.symbol*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %147, %112
  %125 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.symbol*, %struct.symbol** %125, i64 %127
  %129 = load %struct.symbol*, %struct.symbol** %128, align 8
  %130 = icmp ne %struct.symbol* %129, null
  br i1 %130, label %131, label %150

131:                                              ; preds = %124
  %132 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.symbol*, %struct.symbol** %132, i64 %134
  %136 = load %struct.symbol*, %struct.symbol** %135, align 8
  %137 = getelementptr inbounds %struct.symbol, %struct.symbol* %136, i32 0, i32 1
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %143, i64 %145
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %146, align 8
  br label %147

147:                                              ; preds = %131
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %124

150:                                              ; preds = %124
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %155, i64 %157
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %158, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  br label %201

163:                                              ; preds = %16
  %164 = load i64, i64* @t, align 8
  %165 = load i64, i64* @ID, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %190

167:                                              ; preds = %163
  br label %168

168:                                              ; preds = %187, %167
  %169 = load i64, i64* @t, align 8
  %170 = load i64, i64* @ID, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %189

174:                                              ; preds = %168
  %175 = load i8*, i8** @token, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** @inttype, align 8
  %177 = call %struct.symbol* @dclparam(i32 0, i8* %175, %struct.TYPE_13__* %176, i32* @src)
  store %struct.symbol* %177, %struct.symbol** %10, align 8
  %178 = load %struct.symbol*, %struct.symbol** %10, align 8
  %179 = getelementptr inbounds %struct.symbol, %struct.symbol* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load %struct.symbol*, %struct.symbol** %10, align 8
  %181 = load i32*, i32** %3, align 8
  %182 = call i32* @append(%struct.symbol* %180, i32* %181)
  store i32* %182, i32** %3, align 8
  %183 = call i64 (...) @gettok()
  store i64 %183, i64* @t, align 8
  %184 = load i64, i64* @t, align 8
  %185 = icmp ne i64 %184, 44
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  br label %189

187:                                              ; preds = %174
  %188 = call i64 (...) @gettok()
  store i64 %188, i64* @t, align 8
  br label %168

189:                                              ; preds = %186, %172
  br label %190

190:                                              ; preds = %189, %163
  %191 = load i32, i32* @FUNC, align 4
  %192 = call %struct.symbol** @ltov(i32** %3, i32 %191)
  store %struct.symbol** %192, %struct.symbol*** %4, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %196, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %190, %150
  %202 = load i64, i64* @t, align 8
  %203 = icmp ne i64 %202, 41
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = call i32 @expect(i8 signext 41)
  %206 = call i32 @skipto(i8 signext 123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parameters.stop, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i64, i64* @t, align 8
  %209 = icmp eq i64 %208, 41
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = call i64 (...) @gettok()
  store i64 %211, i64* @t, align 8
  br label %212

212:                                              ; preds = %210, %207
  %213 = load %struct.symbol**, %struct.symbol*** %4, align 8
  ret %struct.symbol** %213
}

declare dso_local i64 @istypename(i64, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @append(%struct.symbol*, i32*) #1

declare dso_local i64 @gettok(...) #1

declare dso_local %struct.TYPE_13__* @dclr(i32, i8**, i32*, i32) #1

declare dso_local i32 @specifier(i32*) #1

declare dso_local i8* @stringd(i32) #1

declare dso_local %struct.symbol* @dclparam(i32, i8*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @hasproto(%struct.TYPE_13__*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local %struct.TYPE_13__** @newarray(i64, i32, i32) #1

declare dso_local i64 @length(i32*) #1

declare dso_local %struct.symbol** @ltov(i32**, i32) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @skipto(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
