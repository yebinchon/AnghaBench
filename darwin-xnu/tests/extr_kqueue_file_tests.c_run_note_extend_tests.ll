; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_file_tests.c_run_note_extend_tests.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_file_tests.c_run_note_extend_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32* }
%struct.passwd = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"THESE TESTS MAY FAIL ON HFS\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"3.1.1: write beyond the end of a file\00", align 1
@FILE1 = common dso_local global i8* null, align 8
@NOTE_EXTEND = common dso_local global i32 0, align 4
@YES_EVENT = common dso_local global i32 0, align 4
@NOSLEEP = common dso_local global i32 0, align 4
@CREAT = common dso_local global i32 0, align 4
@SLEEP = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@UNLINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"3.1.7: lengthen a file with truncate()\00", align 1
@LENGTHEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"3.2.1: setxattr() a file\00", align 1
@NO_EVENT = common dso_local global i32 0, align 4
@SETXATTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"3.2.2: chmod a file\00", align 1
@CHMOD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"3.2.3: chown a file\00", align 1
@CHOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Couldn't getpwnam for user \22local\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"3.2.4: chmod a dir\00", align 1
@DIR1 = common dso_local global i8* null, align 8
@MKDIR = common dso_local global i32 0, align 4
@RMDIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"3.2.5: chown a dir\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"3.2.6: TRUNC a file with truncate()\00", align 1
@TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_note_extend_tests() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca [50 x i8], align 16
  %3 = alloca %struct.passwd*, align 8
  %4 = call i32 @T_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %5 = load i8*, i8** @FILE1, align 8
  %6 = load i32, i32* @NOTE_EXTEND, align 4
  %7 = load i32, i32* @YES_EVENT, align 4
  %8 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %5, i32 1, i32 1, i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* @NOSLEEP, align 4
  %14 = load i32, i32* @CREAT, align 4
  %15 = load i8*, i8** @FILE1, align 8
  %16 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %12, i32 %13, i32 %14, i32 2, i8* %15, i8* null)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %18 = load i32, i32* @SLEEP, align 4
  %19 = load i32, i32* @WRITE, align 4
  %20 = load i8*, i8** @FILE1, align 8
  %21 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %17, i32 %18, i32 %19, i32 2, i8* %20, i8* null)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* @NOSLEEP, align 4
  %26 = load i32, i32* @UNLINK, align 4
  %27 = load i8*, i8** @FILE1, align 8
  %28 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %24, i32 %25, i32 %26, i32 2, i8* %27, i8* null)
  %29 = call i32 @execute_test(%struct.TYPE_4__* %1)
  %30 = load i8*, i8** @FILE1, align 8
  %31 = load i32, i32* @NOTE_EXTEND, align 4
  %32 = load i32, i32* @YES_EVENT, align 4
  %33 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 1, i32 1, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* @NOSLEEP, align 4
  %39 = load i32, i32* @CREAT, align 4
  %40 = load i8*, i8** @FILE1, align 8
  %41 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %37, i32 %38, i32 %39, i32 2, i8* %40, i8* null)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %43 = load i32, i32* @SLEEP, align 4
  %44 = load i32, i32* @LENGTHEN, align 4
  %45 = load i8*, i8** @FILE1, align 8
  %46 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %42, i32 %43, i32 %44, i32 2, i8* %45, i8* null)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* @NOSLEEP, align 4
  %51 = load i32, i32* @UNLINK, align 4
  %52 = load i8*, i8** @FILE1, align 8
  %53 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %49, i32 %50, i32 %51, i32 2, i8* %52, i8* null)
  %54 = call i32 @execute_test(%struct.TYPE_4__* %1)
  %55 = load i8*, i8** @FILE1, align 8
  %56 = load i32, i32* @NOTE_EXTEND, align 4
  %57 = load i32, i32* @NO_EVENT, align 4
  %58 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 1, i32 1, i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* @NOSLEEP, align 4
  %63 = load i32, i32* @CREAT, align 4
  %64 = load i8*, i8** @FILE1, align 8
  %65 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %61, i32 %62, i32 %63, i32 2, i8* %64, i8* null)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %67 = load i32, i32* @SLEEP, align 4
  %68 = load i32, i32* @SETXATTR, align 4
  %69 = load i8*, i8** @FILE1, align 8
  %70 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %66, i32 %67, i32 %68, i32 2, i8* %69, i8* null)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* @NOSLEEP, align 4
  %75 = load i32, i32* @UNLINK, align 4
  %76 = load i8*, i8** @FILE1, align 8
  %77 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %73, i32 %74, i32 %75, i32 2, i8* %76, i8* null)
  %78 = call i32 @execute_test(%struct.TYPE_4__* %1)
  %79 = load i8*, i8** @FILE1, align 8
  %80 = load i32, i32* @NOTE_EXTEND, align 4
  %81 = load i32, i32* @NO_EVENT, align 4
  %82 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %79, i32 1, i32 1, i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* @NOSLEEP, align 4
  %87 = load i32, i32* @CREAT, align 4
  %88 = load i8*, i8** @FILE1, align 8
  %89 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %85, i32 %86, i32 %87, i32 2, i8* %88, i8* null)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %91 = load i32, i32* @SLEEP, align 4
  %92 = load i32, i32* @CHMOD, align 4
  %93 = load i8*, i8** @FILE1, align 8
  %94 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %90, i32 %91, i32 %92, i32 2, i8* %93, i8* inttoptr (i64 448 to i8*))
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* @NOSLEEP, align 4
  %99 = load i32, i32* @UNLINK, align 4
  %100 = load i8*, i8** @FILE1, align 8
  %101 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %97, i32 %98, i32 %99, i32 2, i8* %100, i8* null)
  %102 = call i32 @execute_test(%struct.TYPE_4__* %1)
  %103 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store %struct.passwd* %103, %struct.passwd** %3, align 8
  %104 = load %struct.passwd*, %struct.passwd** %3, align 8
  %105 = icmp ne %struct.passwd* %104, null
  br i1 %105, label %106, label %150

106:                                              ; preds = %0
  %107 = load i8*, i8** @FILE1, align 8
  %108 = load i32, i32* @NOTE_EXTEND, align 4
  %109 = load i32, i32* @NO_EVENT, align 4
  %110 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %107, i32 2, i32 1, i32 %108, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* @NOSLEEP, align 4
  %115 = load i32, i32* @CREAT, align 4
  %116 = load i8*, i8** @FILE1, align 8
  %117 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %113, i32 %114, i32 %115, i32 2, i8* %116, i8* null)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* @NOSLEEP, align 4
  %122 = load i32, i32* @CHOWN, align 4
  %123 = load i8*, i8** @FILE1, align 8
  %124 = load %struct.passwd*, %struct.passwd** %3, align 8
  %125 = getelementptr inbounds %struct.passwd, %struct.passwd* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.passwd*, %struct.passwd** %3, align 8
  %129 = getelementptr inbounds %struct.passwd, %struct.passwd* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %120, i32 %121, i32 %122, i32 3, i8* %123, i8* %127, i8* %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %134 = load i32, i32* @SLEEP, align 4
  %135 = load i32, i32* @CHOWN, align 4
  %136 = load i8*, i8** @FILE1, align 8
  %137 = call i64 (...) @getuid()
  %138 = inttoptr i64 %137 to i8*
  %139 = call i64 (...) @getgid()
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %133, i32 %134, i32 %135, i32 3, i8* %136, i8* %138, i8* %140)
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* @NOSLEEP, align 4
  %146 = load i32, i32* @UNLINK, align 4
  %147 = load i8*, i8** @FILE1, align 8
  %148 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %144, i32 %145, i32 %146, i32 2, i8* %147, i8* null)
  %149 = call i32 @execute_test(%struct.TYPE_4__* %1)
  br label %152

150:                                              ; preds = %0
  %151 = call i32 @T_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %106
  %153 = load i8*, i8** @DIR1, align 8
  %154 = load i32, i32* @NOTE_EXTEND, align 4
  %155 = load i32, i32* @NO_EVENT, align 4
  %156 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %153, i32 1, i32 1, i32 %154, i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* @NOSLEEP, align 4
  %161 = load i32, i32* @MKDIR, align 4
  %162 = load i8*, i8** @DIR1, align 8
  %163 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %159, i32 %160, i32 %161, i32 2, i8* %162, i8* null)
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %165 = load i32, i32* @SLEEP, align 4
  %166 = load i32, i32* @CHMOD, align 4
  %167 = load i8*, i8** @DIR1, align 8
  %168 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %164, i32 %165, i32 %166, i32 2, i8* %167, i8* inttoptr (i64 448 to i8*))
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* @NOSLEEP, align 4
  %173 = load i32, i32* @RMDIR, align 4
  %174 = load i8*, i8** @DIR1, align 8
  %175 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %171, i32 %172, i32 %173, i32 2, i8* %174, i8* null)
  %176 = call i32 @execute_test(%struct.TYPE_4__* %1)
  %177 = load %struct.passwd*, %struct.passwd** %3, align 8
  %178 = icmp ne %struct.passwd* %177, null
  br i1 %178, label %179, label %223

179:                                              ; preds = %152
  %180 = load i8*, i8** @DIR1, align 8
  %181 = load i32, i32* @NOTE_EXTEND, align 4
  %182 = load i32, i32* @NO_EVENT, align 4
  %183 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %180, i32 2, i32 1, i32 %181, i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* @NOSLEEP, align 4
  %188 = load i32, i32* @MKDIR, align 4
  %189 = load i8*, i8** @DIR1, align 8
  %190 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %186, i32 %187, i32 %188, i32 2, i8* %189, i8* null)
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* @NOSLEEP, align 4
  %195 = load i32, i32* @CHOWN, align 4
  %196 = load i8*, i8** @DIR1, align 8
  %197 = load %struct.passwd*, %struct.passwd** %3, align 8
  %198 = getelementptr inbounds %struct.passwd, %struct.passwd* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to i8*
  %201 = load %struct.passwd*, %struct.passwd** %3, align 8
  %202 = getelementptr inbounds %struct.passwd, %struct.passwd* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i8*
  %205 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %193, i32 %194, i32 %195, i32 3, i8* %196, i8* %200, i8* %204)
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %207 = load i32, i32* @SLEEP, align 4
  %208 = load i32, i32* @CHOWN, align 4
  %209 = load i8*, i8** @DIR1, align 8
  %210 = call i64 (...) @getuid()
  %211 = inttoptr i64 %210 to i8*
  %212 = call i64 (...) @getgid()
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %206, i32 %207, i32 %208, i32 3, i8* %209, i8* %211, i8* %213)
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* @NOSLEEP, align 4
  %219 = load i32, i32* @RMDIR, align 4
  %220 = load i8*, i8** @DIR1, align 8
  %221 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %217, i32 %218, i32 %219, i32 2, i8* %220, i8* null)
  %222 = call i32 @execute_test(%struct.TYPE_4__* %1)
  br label %223

223:                                              ; preds = %179, %152
  %224 = load i8*, i8** @FILE1, align 8
  %225 = load i32, i32* @NOTE_EXTEND, align 4
  %226 = load i32, i32* @NO_EVENT, align 4
  %227 = call i32 @init_test(%struct.TYPE_4__* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %224, i32 1, i32 1, i32 %225, i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* @NOSLEEP, align 4
  %232 = load i32, i32* @CREAT, align 4
  %233 = load i8*, i8** @FILE1, align 8
  %234 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %230, i32 %231, i32 %232, i32 2, i8* %233, i8* null)
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %236 = load i32, i32* @SLEEP, align 4
  %237 = load i32, i32* @TRUNC, align 4
  %238 = load i8*, i8** @FILE1, align 8
  %239 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %235, i32 %236, i32 %237, i32 2, i8* %238, i8* null)
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* @NOSLEEP, align 4
  %244 = load i32, i32* @UNLINK, align 4
  %245 = load i8*, i8** @FILE1, align 8
  %246 = call i32 (i32*, i32, i32, i32, i8*, i8*, ...) @init_action(i32* %242, i32 %243, i32 %244, i32 2, i8* %245, i8* null)
  %247 = call i32 @execute_test(%struct.TYPE_4__* %1)
  ret void
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @init_test(%struct.TYPE_4__*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @init_action(i32*, i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @execute_test(%struct.TYPE_4__*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @getgid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
